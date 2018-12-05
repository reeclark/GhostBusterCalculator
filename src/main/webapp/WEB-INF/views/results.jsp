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

<div  class="test">
	<p> This is a test</p>
</div>
	
<h2>Ghostbusters Franchise Business Plan Proposal</h2>

		<h4>${userStuff.firstname } ${userStuff.lastname }</h4><br>
		<p>Owner</p><br><br>
		<h4>Starting City:  Number of Employees: ${userStuff.employees }</h4><br><br>
		<h5>Summary</h5><br>
		<p>Ghostbusters of ${userStuff.location }, will be the first franchise of the Ghostbusters brand in Michigan;
		utilizing existing technology, and capturing methods, to make Michigan a more living-person friendly environment. </p><br><br>
		<h5>Description</h5><br>
		<p>Ghostbusters of ${userStuff.location } will provide paranormal elimination services to all of Michigan.</P><br><br>
		<h5>Goal</h5><br>
		<p>Using the technology, and methods, developed by the Ghostbusters' founders in 1984, this new franchise will 
		provide the same reliable and timely service that has been a defining characteristic of the Ghostbusters for over 
		30 years.</p><br><br>
		<h5>Initial 1st Year Costs</h5><br>
		<div class="grid-container-custom">
			<div class="grid-item-custom">
				<p>Equipment Cost</p>
			</div>
		</div>
		<div class="grid-container-custom">
			<div class="grid-item-custom">
				${userStuff.equipmentcost }
			</div>
		</div>
		<h4>Equipment Cost: </h4><br><br>
		<h4>Vehicle Cost: ${userStuff.vehiclecost }</h4><br><br>
		<h4>Total Starting Cost: ${userStuff.total }</h4><br><br>
		
		


<footer>The Ghostbusters and all associated images are owned by Sony Pictures (©2018 SONY PICTURES DIGITAL PRODUCTIONS INC. ALL RIGHTS RESERVED).<br>
 Any use of associated images, characters and references in no way imply that we own or have licensed these images for financial gain. This is<br>
 a parody only. DON'T SUE US OVER A SILLY PROJECT....please!?</footer>
</body>
</html>