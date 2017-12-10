<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<form action=""> 
<br>
<textarea rows="4" cols="50" name="comment" >
Enter text here...</textarea>
<input type="submit" value="invia">
</form>
<%
out.write("<script>alert('passwordError')</script>");
%>
</body>
</html>