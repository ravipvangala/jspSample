<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Data typed</title>
</head>
<body>
	<%-- get data by params and showing using EL (Expression Language) --%>
	
	<h1> Your data: </h1>
	<br>
	<p> Your name: ${param.name}</p> 
	<p> Your age: ${param.age}</p> 
</body>
</html>