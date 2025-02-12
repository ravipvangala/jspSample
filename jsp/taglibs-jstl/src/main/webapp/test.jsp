<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="ct" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test</title>
</head>
<body>
	<h1>Testing tag file...</h1>
	<ct:labelLinkInput labelName="Name:" inputType="text" id="name" />
	<ct:labelLinkInput labelName="Age:" inputType="number" id="age" />
	<ct:labelLinkInput labelName="Date:" inputType="date" id="date" />
</body>
</html>