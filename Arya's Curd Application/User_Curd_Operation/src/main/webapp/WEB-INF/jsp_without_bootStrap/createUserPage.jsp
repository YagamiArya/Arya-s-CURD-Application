<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Arya's curd application</h2>
<h3>Create User</h3>
<pre>
<form action="saveUser" method="post">
Id: <input type="text" name="id" readonly="readonly" />
Login Id: <input type="text" name="loginId" />
Name: <input type="text" name="name" />
Status: Active <input type="radio" name="status" value="Active" />
		InActive <input type="radio" name="status" value="InActive" />
<input type="submit" value="Save" />
		
</form>
</pre>
${msg }
<a href="viewUsers">View All</a>
</body>
</html>