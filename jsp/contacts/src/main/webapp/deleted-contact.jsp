<%@page import="guisofiati.beans.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact deleted</title>
</head>
<body>
	<%
		String phoneNumber = request.getParameter("number");
		Contact.deleteContact(phoneNumber);
	%>
	
	<p>Number ${param.number} deleted.</p>
	<a href="index.jsp">Back to home</a>
</body>
</html>