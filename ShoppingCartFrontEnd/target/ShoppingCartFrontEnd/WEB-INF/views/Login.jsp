<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<c:url var="action" value="/j_spring_security_check" />
		<form class="form-horizontal" action="${action}" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="username"><span
					class="glyphicon glyphicon-envelope"></span>Username:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="id"
						id="id" placeholder="Enter username">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd"><span
					class="glyphicon glyphicon-lock"></span>Password:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="password"
						id="password" placeholder="Enter password" required>

				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label><input type="checkbox"> Remember me</label>
					</div>
				</div>
			</div>
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</div>
		</form>
	</div>




</body>
</html>