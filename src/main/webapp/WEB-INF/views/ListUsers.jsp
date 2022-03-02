<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Users</title>
</head>
<body>
<h2>List User
	
</h2>
<table border="1">
<tr>
	<td>UserId</td>
	<td>FirstName</td>
	<td>Email</td>
	<td>Password</td>
	<td>RoleId</td>
	<td>Action</td>
</tr>
<c:forEach items="${users}" var="u">
<tr>
	<td>${u.userId}</td>
	<td>${u.firstName}</td>
	<td>${u.email}</td>
	<td>${u.password}</td>
	<td>${u.roleName}</td>
	<td><a href="deleteuser/${u.userId}">Delete</a> | 
			<a href="edituser?userId=${u.userId}">Edit</a>
		</td>
</tr>
</c:forEach>
</table>
</body>
</html>