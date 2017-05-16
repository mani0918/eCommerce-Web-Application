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


	<h2 align="center">Manage Supplier</h2>

<br>
	<div id="CreateSupplier">

		<form action="manage_supplier_add">

			<div class="container">
		<form class="form-horizontal" >
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">ID:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="id"
						id="id" placeholder="Enter supplier id">
				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Name:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="name"
						id="name" placeholder="Enter supplier name" required>

				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="description">Description:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="description"
						id="description" placeholder="Enter supplier description" required>

				</div>
			</div>
	<br>
	<br>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Create Supplier</button>
				</div>
			</div>
		</form>
	</div>
		</form>

	</div>
	<div id="UpdateSupplier">

		<form action="manage_supplier_update">
<div class="container">
		<form class="form-horizontal" >
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">ID:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="id"
						id="id" value="${selectedSupplier.id}">
				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Name:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="name"
						id="name" value="${selectedSupplier.name}">

				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="description">Description:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="description"
						id="description" value="${selectedSupplier.description}">

				</div>
			</div>
	<br>
	<br>
	
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Update Supplier</button>
				</div>
			</div>
		</form>
	</div>
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

					<td><a href="manage_supplier_delete/${supplier.id}"><button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-trash"></span></button>
							| </a> <a href="manage_supplier_edit/${supplier.id}"><button type="button" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span></button></a></td>

					<td></td>

				</tr>






			</c:forEach>


		</table>

	</div>


</body>
</html>