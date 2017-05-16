<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- <div class="container">
		<div class="h2">View All Products</div>
		<hr>
		<table>
			<c:forEach var="product" items="${productList}">
				<tr>
					<td><img alt="${product.name}" width="25%"
						src="<c:url value="resources/images/${product.id}.jpeg" />">
					</td>
					<td>
						<h5>${product.name}</h5> <a href="mycart/add/${product.id}"><button
								type="button" class="btn btn-success">Add to Cart</button></a>
								<br>
								<br>
								<br>
					</td>
				</tr>
			</c:forEach>
		</table>

	</div> --%>

	<div class="container text-center">
		<h2>Products</h2>
		<hr>
		<c:forEach var="product" items="${productList}">
			<%-- <div class="col-md-6 col-sm-12">
					<div class="container">
						<div class="col-sm-4">
							<img alt="${product.name}" width="150px" height="150px"
								src="<c:url value="resources/images/${product.id}.jpeg" />">
						</div>
						<div class="col-sm-8">
							<p>${product.name}</p>
							<p>${product.description}</p>
							<p>${product.price}</p>
							<a href="mycart/add/${product.id}"><button type="button"
									class="btn btn-success">Add to Cart</button></a>
						</div>
					</div>
				</div> --%>

			<div class="col-md-6">
				<div class="col-md-6">
					<img src="<c:url value="resources/images/${product.id}.jpeg" />"
						alt="${product.name}" width="200px" height="200px" />
						<br />
						<br />
						
				</div>
				<div class="col-md-6">
					<h3>${product.name}</h3>
					<p>${product.description}</p>
					<p><i class="fa fa-inr" aria-hidden="true"></i>${product.price}</p>
					<p>
						<a href="mycart/add/${product.id}"><button type="button"
								class="btn btn-success">Add to Cart<span class="glyphicon glyphicon-shopping-cart"></span></button></a>
					</p>
					<br />
					<br />
					<br />
				</div>
			</div>

		</c:forEach>
	</div>
</body>
</html>
<%-- <div class="col-sm-4">
    <c:forEach var="product" items="${productList}">
      <div class="well">
       <p ${product.name}></p>
      </div>
      <div class="well">
       <p ${product.description}></p>
      </div>
      </c:forEach>
    </div> --%>
<%--  <div class="col-sm-4">
    <c:forEach var="product" items="${productList}">
      <div class="">
       <p>ProductName:${product.name}</p>
      </div>
      <div class="">
       <p>ProductDescription: ${product.description}</p>
      </div>
      </c:forEach>
    </div> --%>

