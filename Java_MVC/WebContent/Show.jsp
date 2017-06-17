<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show New User</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />
<body>
<form action="root" method="post">
<div class="container">	
	<h1>User Detail</h1>
	<br />
	<jsp:useBean id="users" class="com.mvc.bean.User" scope="request"></jsp:useBean>
	<div class="row">
		<jsp:setProperty property="id" name="users"/>
		<label class="col-sm-2">ID</label>
		<div class="col-sm-10">
			<jsp:getProperty property="id" name="users"/>
		</div>
	</div>
	<div class="row">
		<jsp:setProperty property="name" name="users"/>
		<label class="col-sm-2">Name</label>
		<div class="col-sm-10">
			<jsp:getProperty property="name" name="users"/>
		</div>
	</div>
	<div class="row">
		<jsp:setProperty property="email" name="users"/>
		<label class="col-sm-2">Email</label>
		<div class="col-sm-10">
			<jsp:getProperty property="email" name="users"/>
		</div>
	</div>
	<div class="row">
		<jsp:setProperty property="address" name="users"/>
		<label class="col-sm-2">Address</label>
		<div class="col-sm-10">
			<jsp:getProperty property="address" name="users"/>
		</div>
	</div>
	<div class="row">
		<jsp:setProperty property="password" name="users"/>
		<label class="col-sm-2">Password</label>
		<div class="col-sm-10">
			<jsp:getProperty property="password" name="users"/>
		</div>
	</div>
	<div class="row">
		<jsp:setProperty property="newsletter" name="users"/>
		<label class="col-sm-2">Newsletter</label>
		<div class="col-sm-10">
			<jsp:getProperty property="newsletter" name="users"/>
		</div>
	</div>
	<div class="row">
		<jsp:setProperty property="sex" name="users"/>
		<label class="col-sm-2">Sex</label>
		<div class="col-sm-10">
			<jsp:getProperty property="sex" name="users"/>
		</div>
	</div>
	<div class="row">
		<jsp:setProperty property="number" name="users"/>
		<label class="col-sm-2">Number</label>
		<div class="col-sm-10">
			<jsp:getProperty property="number" name="users"/>
		</div>
	</div>
	<div class="row">
		<jsp:setProperty property="country" name="users"/>
		<label class="col-sm-2">Country</label>
		<div class="col-sm-10">
			<jsp:getProperty property="country" name="users"/>
		</div>
	</div>
	<div class="row">
		<label class="col-sm-2">Framework</label>
		<div class="col-sm-2"><c:forEach var="framework" items="${frame}" varStatus="loop">
						${framework.framework}
    					<c:if test="${not loop.last}">,</c:if>
		</c:forEach>
		</div>
	</div>
	<div class="row">
	
		<label class="col-sm-2">Skills</label>
		<div class="col-sm-2"><c:forEach var="skill" items="${frame}" varStatus="loop">
						${skill.skill}
    					<c:if test="${not loop.last}">,</c:if>
		</c:forEach>
		</div>
	</div>
</div>
<div class="row">
<label class="col-sm-2"><input type="submit" class="btn-success"></label>
</div>
</form>

</body>
<jsp:include page="footer.jsp" />
</html>