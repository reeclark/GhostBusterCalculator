<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Equipment</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<link rel="stylesheet" href="main.css">
</head>
<body>

	<h1></h1>
	<br>

		<h2>Equipment</h2>
		<br>
		<br>
<div class="container-custom"><br>

		<p>First, you're going to need some equipment. You can't just yell
			"Get Her!" and try to grab the ghost with your bare hands. You need some highly
			specialized (and 100%, totally legal) gear. Below is a simple form to
			help you select how much equipment you'll need to get your team
			started.</p>
		<br>
		<br>


		<form action="addequipment" method="post">
			<input type="hidden" name="userid" value="${userid }">
			<table class="table">
				<thead>
					<th>Item ID</th>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Visual</th>
					<th>Quantity</th>
				</thead>
				<c:forEach var="e" items="${equipment}">
				<tbody>
					<tr>
						<td>${e.id}</td>
						<td>${e.item}</td>
						<td>${e.description}</td>
						<td>${e.price}<input type="hidden" name="price" value="${e.price }"></td>
						<td><img src="${e.image }" width="125" height="175"></td>
						<td><input type="number" name="quantity" value="0"></td>
					</tr>
				</tbody>	
				</c:forEach>
			</table><br>
			</div><br>
				<input class="btn btn-custom" type="submit" value="Vehicle Selection">
			</form>
	
	<br>
	<br>

	<footer>
		The Ghostbusters and all associated images are owned by Sony Pictures
		(©2018 SONY PICTURES DIGITAL PRODUCTIONS INC. ALL RIGHTS RESERVED).<br>
		Any use of associated images, characters and references in no way
		imply that we own or have licensed these images for financial gain.
		This is<br> a parody only. DON'T SUE US OVER A SILLY
		PROJECT....please!?
	</footer>
</body>
</html>