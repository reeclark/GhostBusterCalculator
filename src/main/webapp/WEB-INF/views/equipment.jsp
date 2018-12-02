<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Equipment</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<link rel="stylesheet" href="main.css">
</head>
<body>
<div class="container">
<h1></h1><br>
<h3><a href="/">Home</a></h3>
<h2>Equipment</h2>
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

<footer>The Ghosbusters and all associated images are owned by Paramount Pictures. All uses of associated images in no way imply<br>
that we own or have licensed these images for financial gain. This is a parody only. DON'T SUE US OVER A SILLY PROJECT....please!?</footer>
</body>
</html>