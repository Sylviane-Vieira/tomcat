<!DOCTYPE HTML>
<HTML>
<HEAD>
   <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <%@ page import="java.sql.*" %>
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
   String query = "select * from annuaire where nom = '"+nom+"';";
   ResultSet rs = stmt.executeQuery(query);
   rs.next();
   %>
<%
   con.close();
%>

<p> <%=rs.getString("nom") %>
<p> <%=rs.getString("prenom") %>
<p> <%=rs.getString("sexe") %>
<p> <%=rs.getString("tel") %>
<p> <%=rs.getString("fonction") %>


</BODY>
</HTML>
