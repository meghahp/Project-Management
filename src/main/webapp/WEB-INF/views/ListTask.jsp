<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>List Tasks </h2>
	<a href="newtask">New Task?</a>
	<table border="1">
		<tr>
			<td>TaskId</td>
			<td>Task Name</td>
			<td>ModuleId</td>
			<td>ProjectId</td>
			<td>Priority</td>
			<td>Description</td>
			<td>StatusId</td>
			<td>Total Minutes</td>
			<td colspan="2">Action</td>
		</tr>
		<c:forEach items="${task}" var="u">
			<tr>
				<td>${u.taskId}</td>
				<td>${u.title}</td>
				<td>${u.moduleId}</td>
				<td>${u.projectId}</td>
				<td>${u.priority}</td>
				<td>${u.description}</td>
				<td>${u.statusId}</td>
				<td>${u.totalMinutes}</td>
				<td><a href="deletetask/${u.taskId}">Delete</a></td><td><a href="edittask?taskId=${u.taskId}">Edit</a>
					<a href="viewteam?projectId=${p.projectId}">View Team</a>
					<a href="addteammember?projectId=${p.projectId}">Add Member</a>
					<a href="viewtask?projectId=${p.projectId}">Task</a>
				</td>
				
			</tr>
		</c:forEach>


	</table>

</body>
</html>