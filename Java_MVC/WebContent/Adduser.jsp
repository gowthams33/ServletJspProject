<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New User</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />
<body>
<div class="container col-sm-12">
<h1>Add User</h1>
<form class="form-horizontal"  action="InsertServlet" method="post">
	<div>
		<label class="col-sm-2 control-label">Name</label>
		<div class="col-sm-10">
		<input type="text" class="form-control " name = "name" placeholder="Name" style="width: 400px;" required/>
		</div>
			<br>
	</div>

	<div>
		<label class="col-sm-2 control-label">Email</label>
		<div class="col-sm-10">
		<input type="email" class="form-control " name = "email" placeholder="Email" style="width: 400px;" required/>
		</div>
			<br>
	</div>
	<div></div>
	<div>
		<label class="col-sm-2 control-label">Password</label>
		<div class="col-sm-10">
		<input type="password" class="form-control " name = "password" placeholder="password" style="width: 400px;" required/>
		</div>
			
	</div>

	<div>
		<label class="col-sm-2 control-label">confirm Password</label>
		<div class="col-sm-10">
		<input type="password" class="form-control " name = "confirmpassword" placeholder="confirmpassword" style="width: 400px;" required/>
		</div>
			
	</div>
	<div >
		<label class="col-sm-2 control-label">Address</label>
		<div class="col-sm-10">
		<input type="textarea" class="form-control " name = "address" placeholder="Address" style="width: 400px;" required/>
		</div>
			
	</div>
	<br>
	<div>
		<label class="col-sm-2 control-label">Newsletter</label>
		<div class="col-sm-10 ">
				<input type="checkbox" name="newsletter" />
		</div>
			
	</div>
	<br>
	<div class="col-sm-11">
	<label class="col-sm-2 control-label">Country</label>
		<div class="col-sm-10">
			   <select name="Country"  style="width: 400px;" required>
			   	<option value="NONE" label="--- Select ---" />
			   	<option>INDIA</option>
			   	<option>USA</option>
			   	<option>UK</option>
			   	<option>pakistan</option>
			   	<option>other</option>
			   </select>
		</div>
	</div>
	<br>
	<div class="col-sm-11">
		<label class="col-sm-2 control-label">Sex</label>
		<div class="col-sm-10">
			<label class="radio-inline">
				<input type="radio" value="M" name = "sex" />Male
			</label>
			<label class="radio-inline">
				<input type="radio" value="F" name = "sex" />Female
			</label>	
		</div>
	</div>
	<div class="col-sm-11">
		<label class="col-sm-2 control-label">Number</label>
		<div class="col-sm-10">
			<input type="radio" class="radio-inline" name = "numbers" value="1">1
			<input type="radio" class="radio-inline" name = "numbers" value="2">2
			<input type="radio" class="radio-inline" name = "numbers" value="3">3
			<input type="radio" class="radio-inline" name = "numbers" value="4">4
			<input type="radio" class="radio-inline" name = "numbers" value="5">5
		</div>
	</div>
	<div class="col-sm-11">
		<label class="col-sm-2 control-label">Web Frameworks</label>
		<div class="col-sm-10">
			<input type="checkbox" class="checkbox-inline" name="framework" value="Spring MVC">Spring MVC
			<input type="checkbox" class="checkbox-inline" name="framework" value="Struts 2">Struts 2
			<input type="checkbox" class="checkbox-inline" name="framework" value="JSF 2">JSF 2
			<input type="checkbox" class="checkbox-inline" name="framework" value="GWT">GWT
			<input type="checkbox" class="checkbox-inline" name="framework" value="Play">Play
			<input type="checkbox" class="checkbox-inline" name="framework" value="Apache Wicket">Apache Wicket
		
		</div>
	</div>

	<div class="col-sm-11">
		<label class="col-sm-2 control-label">Java Skills</label>
		<div class="col-sm-10">
			 <select name="skill" multiple="multiple" size="5" class="form-control" style="width: 400px;">
			 	<option >Hibernate</option>
			 	<option>Spring</option>
			 	<option>Struts</option>
			 	<option>JDOM</option>
			 </select>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn-lg btn-primary pull-right">Add</button>
		</div>
	</div>		
</form>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>