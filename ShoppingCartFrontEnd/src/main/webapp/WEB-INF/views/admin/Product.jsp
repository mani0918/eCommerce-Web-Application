<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="<c:url value="/resources/admin.css" />">

<html>
<head>
<title>Product Page</title>

</head>
<body>
	<h1 align="center">Manage Product</h1>
<br>
<br>
	<c:url var="addAction"
		value="/manage_product_add?${_csrf.parameterName}=${_csrf.token}">
	</c:url>
	<form:form action="${addAction}" commandName="product"
		enctype="multipart/form-data" method="post">
		<table  align="center">
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" value=""
								readonly="true" /></td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern=".{5,20}"
								required="true" title="id should contains 5 to 20 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="name">
						<spring:message text="name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			
			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
				<td><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
				<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td align="left"><form:label path="image">
						<spring:message text=" Image" />
					</form:label></td>
				<td align="left"><form:input type="file" name="image"
						path="image" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit" value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
					<br>
					
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form:form>
	<br>



	<h3>Product List</h3>
	<c:if test="${!empty productList}">
		<table class="table table-bordered">
		<thead>
			<tr class="active">
				<th width="80">Product ID</th>
				<th width="200">Product Description</th>
				<th width="120">Product Name</th>
				<th width="80">Price</th>
				<th width="80">Category</th>
				<th width="80">Supplier</th>
				<th width="100">Action</th>
				</tr>
			</thead>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.description}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td><a
						href="<c:url value='manage_product_edit/${product.id}' />"><button
								type="button" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></button>   |   </a>
					<a href="<c:url value='manage_product_delete/${product.id}' />"><button
								type="button" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>