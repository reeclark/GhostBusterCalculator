<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<link rel="stylesheet" href="main.css">
</head>
<body>
<h1></h1><br>
<a class="btn btn-custom" href="/">Home</a>


<br><br>

	<div class="container">
		<h4>First Name: ${userStuff.firstname } Last Name: ${userStuff.lastname }</h4><br><br>
		<h4>Starting City: ${userStuff.location } Number of Employees: ${userStuff.employees }</h4><br><br>
		<h4>Equipment Cost: ${userStuff.equipmentcost }</h4><br><br>
		<h4>Vehicle Cost: ${userStuff.vehiclecost }</h4><br><br>
		<h4>Total Starting Cost: ${userStuff.total }</h4><br><br>
	</div>


<footer>The Ghostbusters and all associated images are owned by Sony Pictures (©2018 SONY PICTURES DIGITAL PRODUCTIONS INC. ALL RIGHTS RESERVED).<br>
 Any use of associated images, characters and references in no way imply that we own or have licensed these images for financial gain. This is<br>
 a parody only. DON'T SUE US OVER A SILLY PROJECT....please!?</footer>
</body>
</html>