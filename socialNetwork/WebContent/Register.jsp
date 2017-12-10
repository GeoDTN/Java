<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chat - Register</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body id="body">
	<div class="Register">
	<form action="ChatServlet" method="POST">
		<h2>User Name:</h2>
		<input type="text" name="usernameR" id="usernameR">
		<h2>Password</h2>
		<input type="password" name="passwordR" value=""><br>
		<input type="submit" class="btn" value="Register"><br>
	</form>
	</div>
	
</body>
</html>