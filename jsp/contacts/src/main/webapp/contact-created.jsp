<%@page import="guisofiati.utils.Utils"%>
<%@page import="guisofiati.beans.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact created</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String phoneNumber = request.getParameter("number");
		
		Contact contact = new Contact(name, phoneNumber);
		contact.addNewContact(contact);
	%>
	
		<h1>Contact created.</h1>
		<p>Name: ${param.name}</p>
		<p>Phone number: <%= Utils.formatPhoneNumber(contact.getPhoneNumber()) %> </p>
		<br>
		<a href="index.jsp">Back to home</a>
</body>
</html>