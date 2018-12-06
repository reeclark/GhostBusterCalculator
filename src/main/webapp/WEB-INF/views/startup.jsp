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
	<h2>Getting Started</h2><br><br>
	
<div class="container-custom">
	<p>For starters, how about you tell us who you are, which city you're planning on opening in and
	how many people you're going to have on your team?</p>




		<form action="adduser" method="post" onsubmit="return validateInfo()">
			<p>First Name: <input type="text" name="firstname"> 
			Last Name: <input type="text" name="lastname"> </p><br> 
			<p>Which city in Michigan would you like to start in?  <input type="text" name="location"> </p><br> 
			<p>How many people are on your team? <input type="number" name="employees" value="1"> </p>
			</div><br>
			<input class="btn btn-custom" type="submit" value="Next">
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