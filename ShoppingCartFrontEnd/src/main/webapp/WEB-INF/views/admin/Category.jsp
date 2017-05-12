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



	<h2>Manage Categories</h2>


	<div id="CreateCategory">

		<form action="manage_category_add">

			<input type="text" name="id"> <input type="text" name="name">
			<input type="text" name="description"> <input type="submit"
				value="Create Category">
		</form>

	</div>
	<div id="UpdateCategory">

		<form action="manage_category_update">

			<input type="text" name="id" value="${selectedCategory.id}">
			<input type="text" name="name" value="${selectedCategory.name}">
			<input type="text" name="description"
				value="${selectedCategory.description}"> <input
				type="submit" value="Update Category">
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