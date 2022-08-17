<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Edit User</title>
</head>
<body>
<h2 class="text-center">Arya's curd application</h2><br>
<div class="container">
	<h3>Edit User</h3>
	<br>
	<div class="row">
<form action="updateUser" method="post" class="form-group-row">
<pre>
Id: <input type="text" class="form-group" name="id" value="${user.id }" readonly="readonly" />
Login Id: <input type="text" name="loginId" value="${user.loginId }" /><br>
Name: <input type="text" name="name" value="${user.name }" /><br>
Status: Active <input type="radio" name="status"  ${user.status=='Active'?'checked':'' } value="Active" />
	InActive <input type="radio" name="status" ${user.status=='InActive'?'checked':'' } value="InActive" />
		</pre>
<input type="submit" class="btn btn-primary" value="Update" /> 
<a href="viewUsers" class="btn btn-outline-primary">View All </a>
		
</form>
	</div> 
	<br>
	<c:if test="${msg!= null }">
		<div class="alert alert-success" role="alert">
		${msg}
		</div>
	</c:if>
</div>

</body>
</html>