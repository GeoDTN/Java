<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="foglioDiStile.css" rel="stylesheet"></link>
<title>Home</title>
<META HTTP-EQUIV="Refresh" CONTENT="10">
</head>
<body id="body-home">
	<h1 id="benvenuto"><%
	if(request.getSession().getAttribute("user") != null) {
			out.write("Benvenuto " + ((String) request.getSession().getAttribute("user")) + "!");
	} else {
		request.getSession().setAttribute("ERRORKEY", 3);
		response.sendRedirect("login.jsp");
	}
	%>
	</h1>
	<div id="messaggi">
		<textarea id="text_messaggi" name="finestra_messaggi" readonly="readonly"><% 
		ArrayList<String> messages = (ArrayList<String>) request.getServletContext().getAttribute("Messages");
		if(messages != null) {
			for(String message : messages)
				out.write(message + "\n");
		}%></textarea>
		<br>
		<br>
		<form method="POST" action="MultiUsoServlet">
			<!-- Nella servlet vengono identificate le istruzioni da eseguire attraverso il value. -->
		<input type="hidden" name="dispatcher" value="pagina-home"></input>
			<textarea id="invia_messaggi" name="invia_messaggi"></textarea>
			<br>
			<br>
			<input class="home_btn_messaggio" type="submit" value="Invia messaggio"></input>
			<input class="home_btn_messaggio" type="reset" value="Cancella tutto"></input>
		</form>
	</div>
	<div id="utenti">
		<textarea id="lista_utenti" name="lista_utenti" readonly="readonly"><%
		HashSet<String> users = (HashSet<String>) request.getServletContext().getAttribute("Array_utenti");
		for(String user : users)
			out.write(user + "\n");
		%></textarea>
	</div>
</body>
</html>