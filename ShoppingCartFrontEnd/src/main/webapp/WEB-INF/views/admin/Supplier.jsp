<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>


	<h2>Manage Suppliers</h2>


	<div id="CreateSupplier">

		<form action="manage_supplier_add">

			<input type="text" name="id"> <input type="text" name="name">
			<input type="text" name="description"> <input type="submit"
				value="Create Supplier">
		</form>

	</div>
	<div id="UpdateSupplier">

		<form action="manage_supplier_update">

			<input type="text" name="id" value="${selectedSupplier.id}">
			<input type="text" name="name" value="${selectedSupplier.name}">
			<input type="text" name="description"
				value="${selectedSupplier.description}"> <input
				type="submit" value="Update Supplier">
		</form>

	</div>

	<h2>Delete / Update the Suppliers</h2>
	<div id="ShowSuppliers">

		<table border="2" class="table">
			<thead>
				<tr class="active">
					<td>Supplier ID</td>
					<td>Supplier Name</td>
					<td>Supplier Description</td>
					<td>Action</td>
				</tr>
			</thead>

			<c:forEach var="supplier" items="${supplierList}">

				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.description}</td>

					<td><a href="manage_supplier_delete/${supplier.id}"><button type="button" class="btn btn-warning">Delete</button>
							| </a> <a href="manage_supplier_edit/${supplier.id}"><button type="button" class="btn btn-success">Edit</button></a></td>

					<td></td>

				</tr>






			</c:forEach>


		</table>

	</div>


</body>
</html>