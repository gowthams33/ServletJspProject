<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<form class="form-horizontal" action="UpdateServlet" method="post">
<jsp:useBean id="object" class="com.mvc.bean.User" scope="request"></jsp:useBean> 
<div class="form-group">
	<div class="col-sm-12">
		<label class="col-sm-2 control-label">Id</label>
		<jsp:setProperty property="id" name="object"/>
		<input type="text" name = "id" class="col-sm-10 form-control " style="width: 400px;" value='<jsp:getProperty property="id" name="object"/>'>
	</div>
	<div class="col-sm-12">
		<label class="col-sm-2 control-label">Name</label>
		<jsp:setProperty property="name" name="object"/>
		<input type="text" name = "name" class="col-sm-10 form-control " style="width: 400px;" value='<jsp:getProperty property="name" name="object"/>'>
	</div>
	<div class="col-sm-12">
		<label class="col-sm-2 control-label">Email</label>
		<jsp:setProperty property="email" name="object"/>
		<input type="text" name = "email" class="col-sm-10 form-control " style="width: 400px;" value='<jsp:getProperty property="email" name="object"/>'>
	</div>
	<div class="col-sm-12">
		<label class="col-sm-2 control-label">Address</label>
		<jsp:setProperty property="address" name="object"/>
		<input type="text" name = "address" class="col-sm-10 form-control " style="width: 400px;" value='<jsp:getProperty property="address" name="object"/>'>
	</div>
	<div class="col-sm-12">
		<label class="col-sm-2 control-label">Country</label>
		<jsp:setProperty property="country" name="object"/>
		<input type="text" name = "country" class="col-sm-10 form-control " style="width: 400px;" value='<jsp:getProperty property="country" name="object"/>'>
	</div>
	<div class="col-sm-12">
		<label class="col-sm-2 control-label">Sex</label>
		<jsp:setProperty property="sex" name="object"/>
		<input type="text" name = "sex" class="col-sm-10 form-control " style="width: 400px;" value='<jsp:getProperty property="sex" name="object"/>'>
	</div>
	
	<div class="col-sm-2">
	<input type="submit" class="btn-success  " value="Update">
	</div>
</div>
</form>
</body>
</html>