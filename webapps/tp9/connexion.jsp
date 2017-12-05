<!DOCTYPE HTML>
<HTML>
<HEAD>
   <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <%@ page import="java.sql.*, java.util.Date" %>
</HEAD>
<BODY>
<%
   Class.forName("org.postgresql.Driver");
   String url = "jdbc:postgresql://psqlserv/da2i";
   String admin = "vieiras";
   String mp = "moi";
   Connection con = DriverManager.getConnection(url, admin, mp);
   Statement stmt = con.createStatement();
%>
<% String nom = request.getParameter("nom");
   String mdp = request.getParameter ("mdp");
   stmt.executeUpdate("insert into login values ('"+nom+"', '"+mdp+"', now(), '"+request.getRemoteAddr()+"')");
   %>
<p>Bonjour M. <%= request.getParameter("nom") %>, bienvenue sur ce site<p><br/>
<p>Bonjour M. <%= request.getParameter("nom") %>, votre dernière connexion date de <%= new Date() %> <p><br/> 
<% 
   con.close();
%>


</BODY>
</HTML>
