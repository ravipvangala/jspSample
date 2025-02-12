<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
</style>

<meta charset="ISO-8859-1">
<title>List</title>
</head>
<body>
	<jsp:useBean id="contact" class="guisofiati.beans.Person"></jsp:useBean>
		
	<c:import url="header.jsp" />
	
	<h2>List of persons:</h2>
	
	<table>
	<thead>
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Phone number</th>
		<th>Birthdate</th>
		<th>Even</th>
	</tr>
	</thead>
	<tbody>
	
	<c:forEach var="contact" items="${contact.getPersons()}" varStatus="id">
		<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'fffff'}">
			<td>${contact.id}</td>
			<td>${contact.name}</td>
			<td>
				<c:choose>
					<c:when test="${not empty contact.email}">
						${contact.email}
					</c:when>
					<c:otherwise>
						E-mail missing.
					</c:otherwise>
				</c:choose>
			</td>
			<td>${contact.phoneNumber}</td>
			<td>
				<fmt:formatDate value="${contact.getBirthDate()}" pattern="dd/MM/yyyy"/>
			</td>
			<td> 
				<c:if test="${contact.id % 2 == 0}">Yes</c:if> 
			</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
		
	<c:import url="footer.jsp" />
</body>
</html>