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

<h1></h1><br>


<a class="btn btn-custom" href="/">Home</a> <a class="btn btn-custom" href="about">About</a>
<br><br>


<div class="container">


<h2>Equipment</h2><br><br>

	<p>First, you're going to need some equipment. You can't just yell "Get Her!" and try to grab the ghost. You need
	some highly specialized (and 100% legal) gear. You'll also need to hire some help! Below is a simple form to help you
	select how many Ghostbusters you're going to start with, and how much equipment you'll need to get them started.</p><br><br>
		<table class="table">
			<c:forEach var="e" items="${equipment}">
				<tr>
					<td><input type="checkbox" name="quantity" value="">${e.id}</td>
					<td>${e.item}</td>
					<td>${e.description}</td>
					<td>${e.price}</td>
<!-- 					<td><input type="checkbox" name="quantity" value=""></td> -->
				</tr>
			</c:forEach>
		</table>
		<form action="vehicle" method="post">
<input class="btn btn-custom" href="vehicle" type="submit" value="Now select a vehicle!">
</form>
</div><br><br>

<footer>The Ghostbusters and all associated images are owned by Sony Pictures (�2018 SONY PICTURES DIGITAL PRODUCTIONS INC. ALL RIGHTS RESERVED).<br>
 Any use of associated images, characters and references in no way imply that we own or have licensed these images for financial gain. This is<br>
 a parody only. DON'T SUE US OVER A SILLY PROJECT....please!?</footer>
</body>
</html>