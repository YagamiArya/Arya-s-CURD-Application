<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>
</head>
<body>
<h2>Arya's curd application</h2>
<h3>View User</h3>
<table>
	<tr>
		<th>Id</th>
		<th>Login id</th>
		<th>Name</th>
		<th>Status</th>
	</tr>
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

<a href="createUser">Create User</a>
</body>
</html>






