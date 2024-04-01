import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JobSearchServlet")
public class JobSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get search query from form
        String keyword = request.getParameter("keyword");
        
        // Implement search logic here
        
        // Redirect to search results page
        response.sendRedirect("search_results.jsp?keyword=" + keyword);
    }
}
