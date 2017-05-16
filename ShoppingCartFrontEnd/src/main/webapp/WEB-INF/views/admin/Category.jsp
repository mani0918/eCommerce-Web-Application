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



	<h2 align="center">Manage Categories</h2>
	<br>
	<br>
			


	<div id="CreateCategory">

		<form action="manage_category_add">
<div class="container">
		<form class="form-horizontal" >
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">ID:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="id"
						id="id" placeholder="Enter category id">
				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Name:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="name"
						id="name" placeholder="Enter category name" required>

				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="description">Description:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="description"
						id="description" placeholder="Enter category description" required>

				</div>
			</div>
	<br>
	<br>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Create Category</button>
				</div>
			</div>
		</form>
	</div>
	<br>
	<br>






		</form>

	</div>
	<div id="UpdateCategory">

		<form action="manage_category_update">
<div class="container">
		<form class="form-horizontal" >
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">ID:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="id"
						id="id" value="${selectedCategory.id}">
				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Name:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="name"
						id="name" value="${selectedCategory.name}">

				</div>
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2" for="description">Description:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="description"
						id="description" value="${selectedCategory.description}">

				</div>
			</div>
	<br>
	<br>
	
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Update Category</button>
				</div>
			</div>
		</form>
	</div>

		</form>

	</div>

	<h2>Delete / Update the Categories</h2>
	<div id="ShowCategories">

		<table border="2" class="table">
			<thead>
				<tr class="active">
					<td>Category ID</td>
					<td>Category Name</td>
					<td>Category Description</td>
					<td>Action</td>
				</tr>
			</thead>

			<c:forEach var="category" items="${categoryList}">

				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>

					<td><a href="manage_category_delete/${category.id}"><button
								type="button" class="btn btn-warning"><span class="glyphicon glyphicon-trash"></span></button> | </a> <a
						href="manage_category_edit/${category.id}"><button
								type="button" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span></button> </a></td>

					<td></td>

				</tr>






			</c:forEach>


		</table>

	</div>


</body>
</html>