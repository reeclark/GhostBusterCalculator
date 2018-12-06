<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<link rel="stylesheet" href="main.css">
</head>
<body>
	<h1></h1>
	<br>
	<a class="btn btn-custom" href="/">Home</a>
	<a class="btn btn-custom" href="about">About</a>
	<a class="btn btn-custom" href="/fun">Fun</a>
	<br>
	<br>
	<br>


	<h2>Ghostbusters Franchise Business Plan Proposal</h2>
	<br>

	<div class="container-custom">
		<br>
		<p>Owner: ${userStuff.firstname } ${userStuff.lastname }</p>
		<br>

		<p>Starting Location: ${userStuff.state}</p><br>
		<p>Number of Employees: ${userStuff.employees }</p><br><br>
		<h5>Summary</h5><br>
		<p>Ghostbusters of ${userStuff.state }, will be the first franchise of the Ghostbusters brand in the state.
		Utilizing existing technology, and capturing methods, our goal is to make ${userStuff.state } a more living-person friendly 
		environment. </p><br><br>
		
		<h5>Description</h5><br>
		<p>Ghostbusters of ${userStuff.state } will provide paranormal elimination services to the entire state.</P><br><br>
		
		<h5>Goal</h5><br>
		<p>Using the technology, and methods, developed by the Ghostbusters' founders in 1984, this new franchise will 
		provide the same reliable and timely service that has been a defining characteristic of the Ghostbusters for over 
		30 years. Services will be provided 24/7 at a reasonable price.</p><br><br>
		
		<h5>Initial 1st Year Costs</h5><br><br>
				<p>Equipment Cost: $ ${userStuff.equipmentcost }</p>
				<p>Vehicle Cost: $ ${userStuff.vehiclecost }</p>
				<p>Total Initial Cost: $ ${userStuff.total }<br><br>
		<h5>Estimated Yearly Revenue</h5><br><br>
			<p>Average Ghosts Per Year (based on 100% of homicides becoming ghosts): ${ghost }</p>
			<p>Price of Capturing Ghost: $5000.00</p><br>
			<p>Estimated capture rate is 50%.</p>
			<p>Total Estimated Annual Revenue: $ ${revenue }</p><br>
			
		<h5>Profitability</h5>
			<p>The estimated time it will take for the franchise to earn back the initial startup cost is: ${profit } years</p>
			</div><br><br>
	<a href="mailto:${userStuff.email }subject=Ghostbuster Calculator Result&body=First Name:%09${userStuff.firstname }%0D%0DLast Name:%09${userStuff.lastname }%0D
		%0D
		Starting City:%09${userStuff.location }%0D%0DNumber of Employees:%09${userStuff.employees }%0D
		%0D
		Equipment Cost:%09${userStuff.equipmentcost }%0D
		%0D
		Vehicle Cost:%09${userStuff.vehiclecost }%0D
		%0D
		Total Starting Cost:%09${userStuff.total }%0D
		%0D
		Estimated Yearly Revenue:%0D
		%0D
			Average Ghosts Per Year (based on 100% of homicides becoming ghosts):%09${ghost }%0D
			Price of Capturing Ghost:%09$5000.00%0D
			Estimated capture rate is%0950%.%0D
			Total Estimated Annual Revenue: $ ${revenue }%0D
			%0D
		The estimated time it will take for the franchise to earn back the initial startup cost is:%09${profit }"
		class="btn btn-custom">Email Me My Summary</a>


	<br>
	<br>
	<br>


	
	<br>
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