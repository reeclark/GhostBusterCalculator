<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Start up</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<link rel="stylesheet" href="main.css">
</head>
<body>
	<h1></h1>
	<br>
	<a class="btn btn-custom" href="/">Home</a>
	<a class="btn btn-custom" href="about">About</a>
	<br>
	<br>
	<div class="container">
		number of deaths in Michigan over the past 23 years is: 652 <br>
		75% of the deaths were turned into ghosts <br>


		<form action="adduser" method="post" onsubmit="return validateInfo()">
			First Name: <input type="text" name="firstname"> 
			Last Name: <input type="text" name="lastname"> <br> 
			Which city in Michigan would you like to start in? <br> <input type="text" name="location"> <br> 
			How many people are apart of your team? <input type="number" name="employees" value="1"> 
			<input class="btn btn-primary" type="submit" value="Next">
		</form>
	</div>
</head>
<body>
	<br>
	<br>

	<footer>
		The Ghostbusters and all associated images are owned by Sony Pictures
		(�2018 SONY PICTURES DIGITAL PRODUCTIONS INC. ALL RIGHTS RESERVED).<br>
		Any use of associated images, characters and references in no way
		imply that we own or have licensed these images for financial gain.
		This is<br> a parody only. DON'T SUE US OVER A SILLY
		PROJECT....please!?
	</footer>
</body>
</html>