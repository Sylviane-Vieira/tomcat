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
< jsp:useBean id="p" class="mvc.Personne" scope="session" />
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
