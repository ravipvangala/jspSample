<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create contact</title>
</head>
<body>
	<form action="contact-created.jsp">
		<label for="name">Contact's name:</label>
		<input id="name" type="text" name="name"  required autofocus />
		
		<br>
		
		<label for="number">Contact's phone number:</label>
		<input id="number" type="text" name="number" required />
		
		<br>
		
		<button type="submit">Create</button>
	</form>
</body>
</html>