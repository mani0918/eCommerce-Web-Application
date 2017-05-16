<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body>

	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="Home"><img width="25px"
				height="25px" src="<c:url value="resources/images/logo3.png" />"></a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Home"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
			<c:forEach var="category" items="${categoryList}">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">${category.name}<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<c:forEach var="product" items="${productList}">
							<c:if test="${product.category_id == category.id}">
								<li><a href="#">${product.name}</a></li>
							</c:if>
						</c:forEach>

					</ul></li>
			</c:forEach>
		</ul>

		<c:if test="${isAdmin=='true'}">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="secure_logout"><span
						class="glyphicon glyphicon-user"></span>SignOut</a></li>

			</ul>
		</c:if>

		<c:if test="${isUser=='true'}">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="myCart"> 
				<span class="glyphicon glyphicon-shopping-cart"></span>Cart
				</a>
				</li>
				<li><a href="secure_logout"><span
						class="glyphicon glyphicon-user"></span>SignOut</a></li>
			</ul>
		</c:if>

		<c:if test="${!isUser=='true' && !isAdmin=='true'}">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Login"><span class="glyphicon glyphicon-user"></span>Login</a></li>
				<li><a href="RegistrationPage"><span
						class="glyphicon glyphicon-log-in"></span>SignUp</a></li>
			</ul>
		</c:if>







	</div>
	</nav>
</body>
</html>