<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
</head>
<body>
<div class="container">
<h1>Vehicle</h1>
		<table class="table">
			<c:forEach var="v" items="${vehicle}">
				<tr>
					<td>${v.vehicleid}</td>
					<td>${v.vehiclename}</td>
					<td>${v.description}</td>
					<td>$${v.price}</td>
				</tr>
			</c:forEach>
		</table>
</div>
</body>
</html>