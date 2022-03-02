<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Status</title>
</head>
<body>
<h2>List Status</h2>
<a href="newstatus">Add Status</a>
<br>
<table border="1">
	<tr>
		<th>StatusId</th>
		<th>StatusName</th>
		<!-- <th>Action</th> -->
	</tr>
	
	<c:forEach  items="${status}" var="s">
	<tr>
		<td>${s.statusId}</td>
		<td>${s.statusName}</td>
		<td><a href="deletestatus/${s.statusId}">Delete</a> | 
			<a href="editstatus?statusId=${s.statusId}">Edit</a>
		</td>
	</tr>
</c:forEach>
</table>
</body>
</html>