<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update contact</title>
</head>
<body>
	<h1>Which contact do you want to update?</h1>
	<p>If you want to update a certain field, just skip others.</p>

	<form action="contact-updated.jsp">
		<label for="currentNumber">Contact number to update</label>
		<input id="currentNumber" type="text" name="currentNumber" autofocus />
	
		<br>
		<br>
	
		<label for="name">Edit contact's new name</label>
		<input id="name" type="text" name="name" />
	
		<br>
	
		<label for="number">Edit contact's new phone number</label>
		<input id="number" type="text" name="number" />
	
		<br>
	
		<button type="submit">Update</button>
	</form>
</body>
</html>