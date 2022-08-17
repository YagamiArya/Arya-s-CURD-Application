<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
</head>
<body>
<h2>Arya's curd application</h2>
<h3>Update User</h3>
<pre>
<form action="updateUser" method="post">
Id: <input type="text" name="id" value="${user.id }" readonly="readonly" />
Login Id: <input type="text" name="loginId" value="${user.loginId }" />
Name: <input type="text" name="name" value="${user.name }" />
Status: Active <input type="radio" name="status"  ${user.status=='Active'?'checked':'' } value="Active" />
		InActive <input type="radio" name="status" ${user.status=='InActive'?'checked':'' } value="InActive" />
<input type="submit" value="Update" />
		
</form>
</pre>
${msg }
<a href="viewUsers">View All</a>
</body>
</html>