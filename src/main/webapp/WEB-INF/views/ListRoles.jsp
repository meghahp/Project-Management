<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All Roles</title>
</head>
<body>
<h2>New Role</h2>
<a href="newrole">Add Role</a>
<br>
<table border="1">
	<tr>
		<th>RoleId</th>
		<th>RoleName</th>
		<th>Action</th>
	</tr>
	
	<c:forEach  items="${roles}" var="role">
	<tr>
		<td>${role.roleId}</td>
		<td>${role.roleName}</td>
		<td><a href="deleterole/${role.roleId}">Delete</a> | 
			<a href="editrole?roleId=${role.roleId}">Edit</a>
		</td>
	</tr>
</c:forEach>
</table>
<!--  ${roles}<!--expression language-->
</body>
</html>