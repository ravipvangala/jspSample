<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="labelName" required="true"%>
<%@ attribute name="inputType" required="true" %>
<%@ attribute name="id" required="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Label link input</title>
</head>
<body>	
	<label for="${id}">${labelName}</label>
	<input id="${id}" name="${id}" type="${inputType}"/>
</body>
</html>