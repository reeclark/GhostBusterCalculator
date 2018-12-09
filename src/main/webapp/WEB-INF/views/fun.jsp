<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Team!</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<link rel="stylesheet" href="style.css">
<link rel="icon" type="image/png"
	href="https://vignette.wikia.nocookie.net/someordinarygamers/images/2/28/Ghostbusters-logo-1024x819.jpg/revision/latest?cb=20141104164616">
</head>
<body>
	<a class="btn btn-custom" href="/">Home</a>
	<a class="btn btn-custom" href="startup">Get Started!</a>
	<a class="btn btn-custom" href="about">About</a>
	<br> ${fun }

	<div id="container">
		<svg id="svg"></svg>
	</div>

	<script src='team.js'></script>

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/snap.svg/0.4.1/snap.svg-min.js'></script>

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/rxjs/5.0.1/Rx.min.js'></script>



	<script src="index.js"></script>

	<audio controls autoplay loop>
		<source src="ghost.mp3" type="audio/ogg">
	</audio>
</body>
</html>