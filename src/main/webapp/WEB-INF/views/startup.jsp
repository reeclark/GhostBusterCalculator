<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Start up</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<link rel="stylesheet" href="main.css">
<link rel="icon" type="image/png"
	href="https://vignette.wikia.nocookie.net/someordinarygamers/images/2/28/Ghostbusters-logo-1024x819.jpg/revision/latest?cb=20141104164616">
<script src="script.js"></script>
</head>
<body>
	<h1></h1>
	<br>
	<a class="btn btn-custom" href="/">Home</a>
	<a class="btn btn-custom" href="about">About</a>
	<a class="btn btn-custom" href="/fun">Fun</a>
	<br>
	<br>
	<h2>Getting Started</h2>
	<br>
	<br>

	<div class="container-custom">
		<p>For starters, how about you tell us who you are, which state
			you're planning on opening in and how many people you're going to
			have on your team?</p>




		<form action="adduser" method="post">
			<p>
				First Name: <input type="text" name="firstname" pattern="[A-Za-z]{2,}" title="First name entry, has to be more than 2 characters. no spaces/special characters." required> Last Name:
				<input type="text" name="lastname" pattern="[A-Za-z]{2,}" title="Last name entry, has to be more than 2 characters. no spaces/special characters." required>
			</p>
			<p>
				What's your email?: <input type="text" name="email" pattern="\w{5,30}@\w{5,10}[.]\w{2,4}" title="Please enter a valid email address." required>
			</p>
			<br>
			<p>
				Where are you going to be located? <select name="states">
					<c:forEach items="${states}" var="s">
						<option value="${s.stateabv},${s.statename }">${s.statename }</option>
					</c:forEach>
				</select>
			</p>
			<br>
			<p>
				How many people are on your team? <input type="number"
					name="employees" value="1" min="1">
			</p>
			<br>
	</div>
	<br>
	<br>
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