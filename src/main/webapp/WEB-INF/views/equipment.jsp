<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Equipment</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
</head>
<body>
<div class="container">
<h1>Equipment</h1>
		<table class="table">
			<c:forEach var="e" items="${equipment}">
				<tr>
					<td>${e.id}</td>
					<td>${e.item}</td>
					<td>${e.description}</td>
					<td>${e.price}</td>
				</tr>
			</c:forEach>
		</table>
		<form action="vehicle" method="post">
<input class="btn btn-primary" type="submit" value="Now select a vehicle!">
</form>
</div>
</body>
</html>