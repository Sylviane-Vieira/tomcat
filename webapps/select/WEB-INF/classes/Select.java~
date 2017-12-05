// Servlet Select.java affiche nom utilisateru
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/servlet-Select")
public class Select extends HttpServlet
{
  public void service( HttpServletRequest req, HttpServletResponse res ) 
       throws ServletException, IOException
  {
    PrintWriter out = res.getWriter();
    
    res.setContentType( "text/html" );
    
    out.println("<html><body> ");
    out.println("<h1>Bonjour" + req.getParameter("prenom") + "</h1> ");
    out.println("</ul> ");
    out.println("</body></html> ");
  }
}
