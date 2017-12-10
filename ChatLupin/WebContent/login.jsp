<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Viene richiamato il foglio di stile css -->
<link href="foglioDiStile.css" rel="stylesheet"></link>
<title>Chat Login</title>
</head>

<body id="body-login">
<h1 id="benvenuti">Benvenuti nella chat!</h1>

<div id="login-container">
	<!-- La form invia i dati in POST (non visibili nella URL) e l'azione scatenata e' il richiamo
	alla servlet multiUsoServlet persente nella cartella JavaResources. -->
	<form method="POST" action="MultiUsoServlet">		
		<!-- Nella servlet vengono identificate le istruzioni da eseguire attraverso il value. -->
		<input type="hidden" name="dispatcher" value="pagina-login"></input>
		
		<!-- Casella di testo per inserimento nome utente -->
		<h2 class="header2">Nome utente</h2>
		<input type="text" name="username" id="username" value=""></input> <br>
	
		<!-- Casella di testo per inserimento password -->
		<h2 class="header2">Password</h2>
		<input type="password" name="password" id="password" value=""></input><br><br>
		
		<!-- Pulsante invia richiesta (form) -->
		<input type="submit" value="Login">
	 
		<!-- Pulsate reimposta campi nome utente e password -->
		<input type="reset" value="Reset"><br>
	</form>
	<br>
	<h2>
	<%
	if(request.getSession().getAttribute("ERRORKEY") != null) {
		if((Integer) request.getSession().getAttribute("ERRORKEY") == 1)
			out.write("ERRORE: Password errata.");
		if((Integer) request.getSession().getAttribute("ERRORKEY") == 2)
			out.write("ERRORE: Utente gia' loggato.");
		if((Integer) request.getSession().getAttribute("ERRORKEY") == 3)
			out.write("ERRORE: Obbligatorio inserire nome utente.");
	}
	%>
	</h2>
</div>
</body>

</html>