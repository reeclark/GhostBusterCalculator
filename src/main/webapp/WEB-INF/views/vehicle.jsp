<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<link rel="icon" type="image/png"
	href="https://vignette.wikia.nocookie.net/someordinarygamers/images/2/28/Ghostbusters-logo-1024x819.jpg/revision/latest?cb=20141104164616">
</head>
<body>
	<div>${equip }</div>
	<h1></h1>
	<br>
	<a class="btn btn-custom" href="/">Home</a>
	<a class="btn btn-custom" href="about">About</a>
	<a class="btn btn-custom" href="equipment">Back to Equipment</a>
	<br>
	<br>
	<h2>Vehicle</h2>
	<br>
	<br>
	<div class="container-custom">
		<p>Now that you've selected the gear you'll need, it's time to
			pick a vehicle. Hey, a Ghostbuster needs a way to get around! Select
			a vehicle, or vehicles, that you feel will satisfy your needs (and
			budget). Painting and outfitting your new spiritual speedster must
			remain within Ghostbuster corporate standards, so these fees will be
			automatically added to your selection.</p>
		<br>



		<form action="addvehicle" method="post">
			<table class="table">
				<c:forEach var="v" items="${vehicle}">
					<tr>
						<td>${v.vehicleid}</td>
						<td>${v.vehiclename}</td>
						<td>${v.description}</td>
						<td>$ ${v.formattedPrice}<input type="hidden" name="price"
							value="${v.price }"></td>
						<td><img src="${v.image }" width="175" height="175"></td>
						<td><input type="number" name="quantity" value="0"></td>
					</tr>
				</c:forEach>
			</table>
	</div>
	<br>
	<br>
	<input class="btn btn-custom" type="submit" value="Finish">
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