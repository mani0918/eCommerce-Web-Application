<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<form class="form-horizontal" >
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">ID:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="id"
						id="id" placeholder="Enter category id">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Name:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="name"
						id="name" placeholder="Enter category name" required>

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="description">Description:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="description"
						id="description" placeholder="Enter category description" required>

				</div>
			</div>
	
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</div>
		</form>
	</div>








<!-- <table align="center">
<tr>

			<td>CategoryId:</td><td><input type="text" name="id"></td>
			</tr>
			<tr>
			<td>CategoryName: </td><td><input type="text" name="name"></td>
			</tr>
			<tr>
			<td>CategoryDescription:</td>
			<td><input type="text" name="description"></td>
			
			</tr>
			
			<tr>
			<td>
			<br><input type="submit"
				value="Create Category"></td>
				</tr>
				</table> -->
				
				
				
				
				<%--  update ccategory   <table align="center">
<tr>

			<td>CategoryId:</td><td><input type="text" name="id" value="${selectedCategory.id}"></td>
			</tr>
			<tr>
			<td>CategoryName: </td><td><input type="text" name="name" value="${selectedCategory.name}"></td>
			</tr>
			<tr>
			<td>CategoryDescription:</td>
			<td><input type="text" name="description" value="${selectedCategory.description}"></td>
			
			</tr>
			
			<tr>
			<td>
			<br><input type="submit"
				value="Update Category"></td>
				</tr>
				</table>
			CategoryId: <input type="text" name="id" value="${selectedCategory.id}"><br>
			CategoryName:<input type="text" name="name" value="${selectedCategory.name}"><br>
			CategoryDescription:<input type="text" name="description"
				value="${selectedCategory.description}"><br> <input
				type="submit" value="Update Category"> --%>
</body>
</html>