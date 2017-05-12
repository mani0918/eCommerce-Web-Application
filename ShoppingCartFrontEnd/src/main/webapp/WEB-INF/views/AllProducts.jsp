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
		<table>
		<c:forEach var="product" items="${productList}">
			<tr>
				<td>
					<div class="row">
						<div class="col-sm-4">
							
								<img alt="${product.name}" width= "300px" height="220px"
									src="<c:url value="resources/images/${product.id}.jpeg" />">
								
								<br>
								<br>
								<br>
								<br>

							<%-- </c:forEach> --%>

						</div>
					</div>
				</td>
				<td align="center">

					<div class="col-sm-10">
						
							<div class=""><p>Name:${product.name}</p>
								<p>Description:${product.description}</p>
								<p>Price:${product.price}</p></div>
								<a href="mycart/add/${product.id}"><button type="button"
										class="btn btn-success">Add to Cart</button></a>
							<br>
							<br>
							<br>
							<br>
							<!-- <div class="">
       
      </div> -->
						</c:forEach>
					</div>



				</td>
			</tr>

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

