<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <style type="text/css">
body {
	background-image: url("resources/images/backimg.png");
	background-size: cover;
	padding: 0;
	margin: 0;
}

</style>
 -->
 
 
<link rel="stylesheet"
	href="<c:url value="resources/css/font-awesome.css"/>">
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.css"/>">
<link rel="stylesheet" href="<c:url value="resources/css/Style.css"/>">



<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
<style>
hr.style13 {
	height: 10px;
	border: 0;
	box-shadow: 0 10px 10px -10px #8c8b8b inset;
} 


 
</style>

</head>

<body>

	<center>
		<h2>
			<img width="75px" height="75px"
				src="<c:url value="resources/images/logo3.png" />">ShoppingCart
		</h2>
	</center>

	<!-- <hr> -->
<hr class="style13">

	<jsp:include page="Menu.jsp"></jsp:include>

	${message}

	<c:if test="${isCustomerAtHome=='true'}">
		<jsp:include page="Carousel.jsp"></jsp:include>

	</c:if>

	<c:if test="${isCustomerAtHome=='true'}">
		<jsp:include page="AllProducts.jsp"></jsp:include>

	</c:if>


	<c:if test="${isUserClickedCheckOut=='true'}">
		<jsp:include page="ThankYou.jsp"></jsp:include>
	</c:if>

	<c:if test="${isUserClickedCart=='true'}">
		<jsp:include page="Cart.jsp"></jsp:include>

	</c:if>

	<c:if test="${isAdmin=='true'}">
		<jsp:include page="admin/AdminHome.jsp"></jsp:include>
	</c:if>

	<c:if test="${isAdminClickedCategories=='true'}">

		<jsp:include page="admin/Category.jsp"></jsp:include>

	</c:if>

	<c:if test="${isAdminClickedSuppliers=='true'}">
		<jsp:include page="admin/Supplier.jsp"></jsp:include>
		<br>
	</c:if>

	<c:if test="${isAdminClickedProducts=='true'}">
		<jsp:include page="admin/Product.jsp"></jsp:include>
		<br>
	</c:if>


	<c:if test="${isUserClickedAboutUs=='true' }">
		<jsp:include page="AboutUs.jsp"></jsp:include>
	</c:if>

	<c:if test="${isUserClickedLogin=='true'}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>

	<c:if test="${isUserClickedRegister=='true'}">

		<jsp:include page="Registration.jsp"></jsp:include>
	</c:if>

	<jsp:include page="Footer.jsp"></jsp:include>

</body>

</html>
