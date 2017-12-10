<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chat - Login</title>
<style>
	body{
	background-image: url('fig.jpg');
	color: white;
	
	}
	</style>
</head>
<body>
	
	<form action="Login" method="POST">
		User Name:<input type="text" name="username" id="username"><br>
		Password<input type="password" name="password" value=""><br>
		<input type="submit" value="Send"><br>
	</form>
	<% 
	if(request.getSession().getAttribute("ERRORKEY")!=null){
		
		if((Integer)request.getSession().getAttribute("ERRORKEY") == 1) {
			%><script>alert('Password error')</script>
			<%
		}
				
		else if ((Integer)request.getSession().getAttribute("ERRORKEY") == 2) {
			%><script>alert('User Name required')</script>
			<%
		} else if ((Integer)request.getSession().getAttribute("ERRORKEY") == 3) {
		 %><script>alert('Welcome')</script>
			<%
		}
			request.getSession().removeAttribute("ERRORKEY");
	}
		%>
</body>
</html>