<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>car Predict</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$('#notEmptyForm').formValidation({
			framework : 'bootstrap',
			icon : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				fullName : {
					validators : {
						notEmpty : {
							message : 'The input is required'
						}
					}
				}
			}
		});
	});
</script>

</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/carPredict.jsp">Website By JIAO & Gavin</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a
				href="${pageContext.request.contextPath}/carPredict.jsp">Home</a></li>
		</ul>
		<ul class="nav navbar-nav">
			<li class="active"><a
				href="${pageContext.request.contextPath}/help.jsp">Help</a></li>
		</ul>
	</div>
	</nav>

	<h2 class="text-center">Please input the attribute you want to
		predict</h2>
	<div class="container">
		<form class="form-horizontal" data-toggle="validator" role="form"
			method="post"
			action="${pageContext.request.contextPath}/CarServlet">
			<table class="table table-striped">
				<tbody>
					<tr>
						<th>EPA (miles per gallon)</th>

						<td>
							<div class="form-group has-feedback  col-xs-6">
								<div class="input-group ">
									<input type="text" class="form-control" name="epa"
										pattern="^[0-9]{1,}$" maxlength="5"
										placeholder="please input number" required>

								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>Acceleration (seconds)</th>

						<td>
							<div class="form-group has-feedback  col-xs-6">
								<div class="input-group ">
									<input type="text" class="form-control" name="acceleration"
										pattern="^[0-9]{1,}$" maxlength="5"
										placeholder="please input number" required>

								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>HorsePower (HP)</th>

						<td>
							<div class="form-group has-feedback  col-xs-6">
								<div class="input-group ">
									<input type="text" class="form-control" name="hp"
										pattern="^[0-9]{1,}$" maxlength="5"
										placeholder="please input number" required>

								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>Top Speed (miles per hour)</th>

						<td>
							<div class="form-group has-feedback  col-xs-6">
								<div class="input-group ">
									<input type="text" class="form-control" name="speed"
										pattern="^[0-9]{1,}$" maxlength="5"
										placeholder="please input number" required>

								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>

			<button class="btn btn-custom btn-lg btn-block outline" name="submit"
				type="submit">submit!</button>
		</form>
</body>
</html>