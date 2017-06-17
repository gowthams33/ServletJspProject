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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />

<body>

	<div class="container">
	
		<c:if test="${not empty msg}">
			<div class="alert alert-${css} alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>${msg}</strong>
			</div>
		</c:if>

		<h1>All Users</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>#ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Framework</th>
					<th>Sex</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
		
			<c:forEach var="user" items="${list}">
				<tr>
					<td>
						${user.id}
					</td>
					<td>${user.name}</td>
					<td>${user.email}</td>
					<td><c:forEach var="framework" items="${user.framework}" varStatus="loop">
						${framework}
    					<c:if test="${not loop.last}">,</c:if>
						</c:forEach></td>
						<td>
							${user.sex}
						</td>
						<td>
							${user.country}
						</td>
						
					<td>
						
						<a href='UpdateServlet?id=${user.id }'><button class="btn btn-primary">Update</button></a>
						<a href='DeleteServlet?id=${user.id}'><button class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>

	</div>
	
	<jsp:include page="footer.jsp" />


</body>
</html>