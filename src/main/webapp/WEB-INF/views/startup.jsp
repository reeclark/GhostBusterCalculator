<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<link rel="stylesheet" href="main.css">
</head>
<body>

The average number of deaths in Michigan over the past 23 years is: 652
<br>
75% of the deaths were turned into ghosts
<br>


<form action="equipment" method="post" onsubmit="return validateInfo()">
First Name: <input type="text" name="firstname" >
Last Name: <input type="text" name="lastname" >
<br>
Which city in Michigan would you like to start in?
<br>
<input type="text" name="location" value="?">
<br>
How many people are apart of your team?
<input type="number" name="employees" value="0">
<input class="btn btn-primary" type="submit" value="Next">
</form>
<!-- <a class="btn btn-custom" href="equipment">Click here to set up equipment for your team</a> -->
</body>
</html>