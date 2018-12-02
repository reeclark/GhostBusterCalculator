<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" >
<link rel="stylesheet" href="main.css">
</head>
<body>

<h1></h1><br><br>
<h4>Welcome to the Ghostbusters Francise Calculator!</h4><br><br>

<div class="background">
	<div class="transbox">
<p>The Ghostbusters have decided to start franchising! This program is designed to help you<br>
customize your own franchise plan to present to your local financial institution. If you want to<br>
be able to start busting ghosts, you're gonna need a load of branded capital! What, you thought the<br>
Ghostbusters were going to finance you? If you want to be a part of this amazing opportunity, you<br>
need to prove that you can be self sufficient (and financially liable).<br><br>
So, if you're ready, let's get you started on the road to busting!<br><br>
To get started, <a class="btn btn-custom" href="showresults">Cick Here!</a></p>
	</div>
</div>


<!--  <form action="equipment" method="post">
<input class="btn btn-primary" type="submit" value="Start here!">
</form>-->


	${ghost}
				<!--   <c:forEach var="ghostStuff" items="${ghost }"> 
					
				</c:forEach> -->
		
<footer>The Ghosbusters and all associated images are owned by Paramount Pictures. All uses of associated images in no way imply<br>
that we own or have licensed these images for financial gain. This is a parody only. DON'T SUE US OVER A SILLY PROJECT....please!?</footer>

</body>
</html>