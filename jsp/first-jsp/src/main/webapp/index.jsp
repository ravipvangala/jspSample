<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello</title>
</head>
<body>
	<%-- <% %> are scriptlets --%>

	<% 
		LocalDateTime dateNow = LocalDateTime.now();
		int hours = dateNow.getHour(); 
		int minutes = dateNow.getMinute();
		
		String message = "Hello, world! It's " + hours + ":" + minutes;
		String name = "Fulano";
		
		int number = (int) (Math.random() * 100);
	%>
	<h1> <% out.println(message); %> </h1>
	<p> Welcome, <%= name %>! Your number is: <%= number %> </p>
</body>
</html>