<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
</head>
<body>
${index}
<form action="equipment" method="post">
<input class="btn btn-primary" type="submit" value="Start here!">
</form>

<div class="container">
	
				<c:forEach var="ghostStuff" items="${ghost }">
					${ghostStuff.homicide}
				</c:forEach>
		
	</div>

</body>
</html>