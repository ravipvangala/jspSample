<%@page import="guisofiati.beans.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
</head>
<body>
	<%
		String phoneNumber = request.getParameter("number");
		Contact contact = Contact.getContactByPhoneNumber(phoneNumber);
		
		if(contact == null) {
	%>
	
	<h1>Contact not found...</h1>
	<p>Contact does not exists or you may have typed a wrong number.</p>
	<br>
	<a href="find-contact.jsp">Try again to insert a number</a>
	<br>
	<a href="index.jsp">Back to home</a>
	
	<%
		} else {
	%>
		
	<h1>Contact found.</h1>
	<p>Name: <%= contact.getName() %></p>
	<p>Number: <%= contact.getPhoneNumber() %></p>
	<a href="find-contact.jsp">Find other contact</a>
	<br>
	<a href="index.jsp">Back to home</a>
	
	<%
		}
	%>
</body>
</html>