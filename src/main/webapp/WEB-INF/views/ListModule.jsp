<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Module</title>
</head>
<body>
<h2>List Module</h2>
<table border="1">
<tr>
	<td>ProjectId</td>
	<td>ModuleId</td>
	<td>Module Name</td>
	<td>Description</td>
	<td>Start Date</td>
	<td>Estimated Hours</td>
	<td>Status</td>
	<td>Action</td>
</tr>
<c:forEach items="${module}" var="m">
<tr>
	<td>${m.projectTitle}</td>
	<td>${m.moduleId}</td>
	<td>${m.moduleName}</td>
	<td>${m.description}</td>
	<td>${m.startDate}</td>
	<td>${m.estimatedHours}</td>
	<td>${m.status}</td>
	<td><a href="deletemodule/${m.moduleId}">Delete</a> | 
		<a href="editmodule?moduleId=${m.moduleId}">Edit</a>
	</td>
</tr>
</c:forEach>
</table>
</body>
</html>