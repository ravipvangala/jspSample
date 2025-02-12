<%@page import="guisofiati.utils.Utils"%>
<%@page import="guisofiati.beans.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
	table {
		border-collapse: collapse;
	}
	
	th, td {
		border: 1px solid black;
		text-align: left;
  		padding: 8px;
	}
	
	button:hover {
		 cursor: pointer;
	}
	
	td button a {
		text-decoration: none;
		color: inherit;
	}
</style>

<meta charset="ISO-8859-1">
<title>List contacts</title>
</head>
<body>
	<%
		if(Contact.getTotalContacts() == 0) {
	%>
	
	<h1>Oops... you don't have contacts yet.</h1>
	<button> <a href="create-contact.jsp">Create a new contact</a> </button>
	
	<%
		} else {
	%>
	
	<table>
	<caption>Contacts list</caption>
	<tr>
		<th>Name</th>
		<th>Number</th>
		<th>Delete</th>
	</tr>
	<tr>
	<% 
		for (Contact contact : Contact.getContacts()) {
	%>
		<td> <%= contact.getName() %> </td>
		
		<td> <%= Utils.formatPhoneNumber(contact.getPhoneNumber()) %> </td>
		
		<td> 
			<button> 
				<a href="deleted-contact.jsp?number=<%= contact.getPhoneNumber()%>">Delete</a>
			</button>
		</td>
		</tr>
	<%
		}
	%>
	</table>
	
	<p>Contacts saved: <%= Contact.getTotalContacts() %></p>
	<br>
	<a href="index.jsp">Back to home</a>
	
	<%
		}
	%>
</body>
</html>