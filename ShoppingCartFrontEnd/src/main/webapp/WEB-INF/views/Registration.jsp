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
  <form class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="firstname">Firstname:</label>
      <div class="col-sm-6">
      
        <input type="text" class="form-control" id="firstname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">Lastname:</label>
      <div class="col-sm-6">          
        <input type="text" class="form-control" id="lastname">
        
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email Id:</label>
      <div class="col-sm-6">          
        <input type="email" class="form-control" id="email">
        
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-6">          
        <input type="password" class="form-control" id="pwd" required >
        
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