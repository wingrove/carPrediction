<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Successful Page</title>
</head>

<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/carPredict.jsp">
				Website Built By JIAO & Gavin</a>
		</div>

		<ul class="nav navbar-nav">
			<li class="active"><a
				href="${pageContext.request.contextPath}/help.jsp">Help</a></li>
		</ul>
	</div>
	</nav>
	<%
		double epa = (Double) request.getAttribute("epa");
		double acceleration = (Double) request.getAttribute("acceleration");
		double hp = (Double) request.getAttribute("hp");
		double speed = (Double) request.getAttribute("speed");
		String result = (String) request.getAttribute("result");
	%>
	
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>epa</th>
					<th>acceleration</th>
					<th>hp</th>
					<th>speed</th>
				</tr>
			</thead>

			<tr>
				<td><%=epa%></td>
				<td><%=acceleration%></td>
				<td><%=hp%></td>
				<td><%=speed%></td>
			</tr>

		</table>
	</div>
	<div class="container">
		<div class="jumbotron">
			
			<p>the predection of your car is</p>
			<h1><%=result%></h1>
		</div>

	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"
		integrity="sha384-THPy051/pYDQGanwU6poAc/hOdQxjnOEXzbT+OuUAFqNqFjL+4IGLBgCJC3ZOShY"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"
		integrity="sha384-Plbmg8JY28KFelvJVai01l8WyZzrYWG825m+cZ0eDDS1f7d/js6ikvy1+X+guPIB"
		crossorigin="anonymous"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>