<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Register</h2>
<div class="container">
  <form action="Register" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="firstname">ID:</label>
      <div class="col-sm-6">
      
        <input type="text" class="form-control" name="userId" id="firstname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">Name:</label>
      <div class="col-sm-6">          
        <input type="text" class="form-control" name="userName" id="lastname">
        
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Password:</label>
      <div class="col-sm-6">          
        <input type="password" class="form-control" name="userPwd"  id="email">
        
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Contact:</label>
      <div class="col-sm-6">          
        <input type="number" class="form-control" name="userContact" id="pwd" required >
        
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
    
    </form>
    </div>
</body>
</html>