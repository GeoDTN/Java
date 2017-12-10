<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chat - Login</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body id="body">
	<div class="login">
	<form action="ChatServlet" method="POST">
		<h2>User Name</h2>
		<input type="text" name="username" id="username">
		<h2>Password</h2>
		<input type="password" name="password" value=""><br>
		<input type="submit" class="btn" value="Login"><br>
	</form>
	</div>
	 
	<% 
	if(request.getSession().getAttribute("ERRORKEY")!=null){
		
		if((Integer)request.getSession().getAttribute("ERRORKEY") == 1) {
			%><script>alert('Password Error!')</script>
			<%
		}
				
		else if ((Integer)request.getSession().getAttribute("ERRORKEY") == 2) {
			%><script>alert('User name required!')</script>
			<%
		} 
		 else if ((Integer)request.getSession().getAttribute("ERRORKEY") == 3) {
			 %><script>alert('Please Register!')</script>
				<%
			}
		 else if ((Integer)request.getSession().getAttribute("ERRORKEY") == 4) {
			 %><script>alert('Welcome!')</script>
				<%
			}
			request.getSession().removeAttribute("ERRORKEY");
	}
		%>
		
</body>
</html>