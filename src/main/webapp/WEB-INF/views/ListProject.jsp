<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Project</title>
</head>
<body>
<h2>List Project</h2>
<table border="1">
<tr>
	<td>Project Id</td>
	<td>Title</td>
	<td>Description</td>
	<td>Technology</td>
	<td>Start Date</td>
	<td>End Date</td>
	<td>Estimated hours</td>
	<td>Status Name</td>
	<td>Action</td>
	
</tr>
<c:forEach items="${project}" var="p">
<tr>
	<td>${p.projectId}</td>
	<td>${p.projectTitle}</td>
	<td>${p.description}</td>
	<td>${p.technology}</td>
	<td>${p.startDate}</td>
	<td>${p.endDate}</td>
	<td>${p.estimatedHours}</td>
	<td>${p.statusName}</td>
	<td><a href="deleteproject/${p.projectId}">Delete</a> | 
		<a href="editproject?projectId=${p.projectId}">Edit</a>
	</td>
 </tr>
</c:forEach>
</table>
</body>
</html>