<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<link rel="icon" type="image/png" href="gblogo.jpg">
</head>
<body>

	<h1></h1>
	<br>
	<a class="btn btn-custom" href="about">About</a>
	<a class="btn btn-custom" href="/fun">Fun</a>
	<br>
	<br>
	<h2>Welcome to the Ghostbusters Franchise Calculator!</h2>
	<br>
	<br>

	<p class="custom-p">
		The Ghostbusters have decided to start franchising! This program is
		designed to help you customize your own franchise business plan to
		present to your local financial institution for a (totally reasonable
		and not at all regrettable) loan! Hey, if you want to be able to start
		busting ghosts, you're gonna need a load of bread to capitalize! What,
		you thought the Ghostbusters were going to finance you? If you want to
		be a part of this amazing opportunity, you need to prove that you can
		be totally self-sufficient (and 100% financially liable).<br> <br>
		So, if you're ready, let's get you started on the road to busting!<br>
		<br> To get the slime flowing, <a class="btn btn-custom"
			href="startup">Click Here!</a>
	</p>
	<br>
	<br> ${ghost}

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