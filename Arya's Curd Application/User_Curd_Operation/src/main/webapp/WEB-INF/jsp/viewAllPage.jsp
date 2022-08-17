<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>View Users</title>
</head>
<body>
<br>
<h2 class="text-center">Arya's curd application</h2>
<div class="container">
	<h3>View User</h3>
	<br>
	<div class="row">
		<table class="table table-hover">
			<thead class="table-dark">
				<tr>
					<th>Id</th>
					<th>Login id</th>
					<th>Name</th>
					<th>Status</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${users }" var="user" >
				<tr>
					<td>${user.id }</td>
					<td>${user.loginId }</td>
					<td>${user.name }</td>
					<td>${user.status }</td>
					<td><a href="editUser?id=${user.id }">Edit</a></td>
					<td><a href="deleteUser?id=${user.id }">Delete</a></td>
				</tr>
			</c:forEach>
			
			</tbody>
		</table>
</div>
<a href="createUser" class="btn btn-outline-primary">Create User</a>
</div>
</body>
</html>






