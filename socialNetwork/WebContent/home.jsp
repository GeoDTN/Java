<!DOCTYPE html>
<html>
<%@ page import="java.util.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
 <meta http-equiv="refresh" content="20">
<title>Minion Chat</title>
</head>
<body>
<h1>


<%
String user=(String) request.getSession().getAttribute("UserNameKey"); 
if(user==null){
	request.getSession().setAttribute("ERRORKEY", 2);
	response.sendRedirect("login.jsp");
	return;
}
out.write("Welcome, "+user);
%>
</h1>
<div class="messages">
<form action="MessageServlet" method="post">
<textarea name="messages" class="textarea" readonly>
<%  ArrayList<String> lMes=(ArrayList<String>)getServletContext().getAttribute("Message List");
	if (lMes != null){
		for (int i=0;i<lMes.size();i++){
			out.write(lMes.get(i)+"\n");
		}	
	}
	
%>
</textarea>
</div>
<div class="loggedUser">
<textarea name="loggedUsers" class="textarea" readonly>
<% Set<String> users= (Set<String>)getServletContext().getAttribute("Array of users");
	for (String name : users){
	   out.write(name+"\n");
   }
%>
</textarea></div>
<div class="write"><input type="text" id="mex" name="textMessage">
<input type="submit" class="btn" name="submit"></div>

</form>


</body>
</html>