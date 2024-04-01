<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Portal</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Job Portal</h1>
    
    <h2>Available Jobs</h2>
    <ul>
        <%-- Read job listings from XML and display --%>
        <%
            try {
                javax.xml.parsers.DocumentBuilderFactory factory = javax.xml.parsers.DocumentBuilderFactory.newInstance();
                javax.xml.parsers.DocumentBuilder builder = factory.newDocumentBuilder();
                org.w3c.dom.Document doc = builder.parse(new java.io.File("jobs.xml"));
                org.w3c.dom.NodeList jobs = doc.getElementsByTagName("job");
                for (int i = 0; i < jobs.getLength(); i++) {
                    org.w3c.dom.Element job = (org.w3c.dom.Element) jobs.item(i);
        %>
                    <li>
                        <strong><%= job.getElementsByTagName("title").item(0).getTextContent() %></strong> -
                        <%= job.getElementsByTagName("company").item(0).getTextContent() %> |
                        <%= job.getElementsByTagName("location").item(0).getTextContent() %><br>
                        <%= job.getElementsByTagName("description").item(0).getTextContent() %><br>
                        Contact: <%= job.getElementsByTagName("contact").item(0).getTextContent() %>
                    </li>
        <% 
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </ul>
</body>
</html>
