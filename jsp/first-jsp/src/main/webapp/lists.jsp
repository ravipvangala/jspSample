<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lists</title>
</head>
<body>
	<ol>
	
	<%
		String[] colours = new String[] {"Red", "Blue", "Orange", "Pink", "Yellow", "Green"};
	
		for (String colour : colours) {
	%>
		<li> <%= colour %></li>
	<%
		}
	%>	
	
	</ol>	
	
</body>
</html>