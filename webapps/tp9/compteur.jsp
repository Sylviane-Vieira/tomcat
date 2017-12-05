<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> Compteurs et objets</title>
	<%@ page import="java.util.*" %>
	<%@ page session="true" %>
    </head>

    <body>
      <%!
	 public class Cpt{
	 private int val=0;
	 public String getVal() {return ""+val;}
	 public void incr(){val++;}
	 }
	 %>

      <%
	 Cpt global = (Cpt)application.getAttribute("global");
	 if (global == null) {
	 global = new Cpt();
	 application.setAttribute("global", global);
	 }
	 global.incr();
	 %>

      <%
	 Cpt local = (Cpt)session.getAttribute("local");
	 if (local == null) {
	 local = new Cpt();
	 session.setAttribute("local", local);
	 }
	 local.incr();
	 %>

      <h1>
	Vous avez accédé <%= local.getVal() %> fois à cette page sur les <%= global.getVal() %> accès effectués.
      </h1>
    </body>
</html>
