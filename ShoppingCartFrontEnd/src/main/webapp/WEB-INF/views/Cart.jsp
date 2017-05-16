s<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- 	<h2>My Cart Page</h2>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Product</th>
							<th>Quantity</th>
							<th>Price</th>
							<th> </th>
						</tr>
					</thead>
					<c:forEach var="cart" items="${cartList}">
						<tr>
							<td>${cart.product_name}</td>
							<td>${cart.quantity}</td>
							<td>${cart.price}</td>
							<td><a href="myCart/delete/${cart.id}"
								class="btn btn-danger">Remove</a></td>
						</tr>
					</c:forEach>
					<!--  <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>$24.59</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>$6.94</strong></h5></td>
                    </tr> -->
					<tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>${totalAmount}</strong></h3></td>
                    </tr>
					<tr>
						<td> </td>
						<td> </td>
						<td> </td>
						<td><a href="Home"><button type="button"
									class="btn btn-default">
									<span class="glyphicon glyphicon-shopping-cart"></span>
									Continue Shopping
								</button></a></td>
						<td>
							<button type="button" class="btn btn-success">
								Checkout <span class="glyphicon glyphicon-play"></span>
							</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div> --%>
	<!-- new cart page -->
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Product</th>
							<th>Quantity</th>
							<th class="text-center">Price</th>
						<th></th>	<th>Action</th>
						
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cart" items="${cartList}">
							<tr>
								<td class="col-sm-8 col-md-6">
									<div class="media">
										<a class="thumbnail pull-left" href="#"> <img
											class="media-object"
											src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png"
											style="width: 72px; height: 72px;">
										</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="#">${cart.product_name}</a>
											</h4>
											<span>Status: </span><span class="text-success"><strong>In
													Stock</strong></span>
										</div>
									</div>
								</td>
								<td class="col-sm-1 col-md-1" style="text-align: center"><input
									type="email" class="form-control" id="exampleInputEmail1"
									value="${cart.quantity}"></td>
								<td class="col-sm-1 col-md-1 text-center"><strong>${cart.price}</strong></td>
								<td></td>
								<td class="col-sm-1 col-md-1">
									<a href="myCart/delete/${cart.id}" type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove"></span> Remove
									</a>
								</td>
							</tr>
						</c:forEach>

						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h3>Total</h3></td>
							<td class="text-right"><h3>
									<strong>${totalAmount}</strong>
								</h3></td>
						</tr>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td>
								<a href="Home "type="button" class="btn btn-warning">
									<span class="glyphicon glyphicon-shopping-cart"></span>
									Continue Shopping
								</a>
							</td>
							<td>
						<a href="ThankYou" type="button" class="btn btn-success">
									Checkout <span class="glyphicon glyphicon-play"></span>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>
</html>