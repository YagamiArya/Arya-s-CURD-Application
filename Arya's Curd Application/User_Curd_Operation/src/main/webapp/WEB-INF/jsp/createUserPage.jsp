<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<h2 class="text-center">Arya's curd application</h2>
<div class="container">
<br>
<h3>Create User</h3>
<br>
<form action="saveUser" method="post">
<pre>
Id: <input type="text" name="id" readonly="readonly" />
Login Id: <input type="text" name="loginId" />
Name: <input type="text" name="name" />
Status: Active <input type="radio" name="status" value="Active" />
	InActive <input type="radio" name="status" value="InActive" />
<input type="submit" value="Save" />
		
</pre>
</form>
</div>
${msg }
<a href="viewUsers">View All</a>
</body>
</html>