// Servlet Insert.java  de test de la configuration
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/servlet-Insert")
public class Insert extends HttpServlet
{
  public void doGet( HttpServletRequest req, HttpServletResponse res ) 
       throws ServletException, IOException
  {
    PrintWriter out = res.getWriter();
    res.setContentType( "text/html" );
    
    out.println("<html><head><title>servlet Insert</title></head><body><center> ");
    out.println("<h1>Insertion de données</h1> ");
    out.println("<br>");
    out.println(" "+req.getParameter("nom") + " "+req.getParameter("prenom"));
    out.println("</body></html> ");
  }
}
