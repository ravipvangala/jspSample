<%@page import="guisofiati.utils.Utils"%>
<%@page import="guisofiati.beans.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact updated</title>
</head>
<body>
	<%
		String currentNumber = request.getParameter("currentNumber");
	
		Contact currentContact = Contact.getContactByPhoneNumber(currentNumber);
		
		String currentContactName = currentContact.getName();
		String currentContactPhoneNumber = currentContact.getPhoneNumber();
	
		String newName = request.getParameter("name");
		String newPhoneNumber = request.getParameter("number");
		
		if (newName == "") {
			newName = currentContactName;
		}
		
		if (newPhoneNumber == "") {
			newPhoneNumber = currentContactPhoneNumber;
		}
		
		currentContact.setName(newName);
		currentContact.setPhoneNumber(newPhoneNumber);
	%>
	
		<h1>Contact updated.</h1>
		<p>Name: <%= newName %></p>
		<p>Phone number: <%= Utils.formatPhoneNumber(newPhoneNumber) %> </p>
		<br>
		<a href="index.jsp">Back to home</a>
</body>
</html>