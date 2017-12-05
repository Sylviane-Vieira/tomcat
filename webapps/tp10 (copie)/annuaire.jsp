<!DOCTYPE HTML>
<HTML>
<HEAD>
   <META  charset="UTF-8" http-equiv="Content-Type" content="text/html">
   <%@ page import="java.sql.*" %>
</HEAD>
<BODY>
<%
   Class.forName("org.postgresql.Driver");
   String url = "jdbc:postgresql://localhost/sylviane";
   String admin = "sylviane";
   String mp = "Boukaka0803!";
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


<p> Nom : <%=rs.getString("nom") %></p>
<p> Prenom : <%=rs.getString("prenom") %></p>
<p> Sexe : <%=rs.getString("sexe") %></p>
<p> Telephone : <%=rs.getString("tel") %></p>
<p> Fonction : <%=rs.getString("fonction") %></p>


</BODY>
</HTML>
