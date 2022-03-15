<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="updatetask" method="post">
		<input type="hidden" value="${task.taskId}" name="taskId" /><br><br>
		Task Name : <input type="text" name="title" value="${task.title }"><br> <br>
		Priority: <input type="text" name="priority" value="${task.priority}"><br> <br>
		Description: <input type="text" name="description" value="${task.description}"><br><br>
		Total Minutes:<input type="text" name="totalMinutes" value="${task.totalMinutes}"><br> <br>
		ModuleId : <input type="text" name="moduleId" value="${task.moduleId }" readonly="readonly"><br> <br>
		ProjectId : <input type="text" name="projectId" value="${task.projectId }" readonly="readonly"><br><br>
		StatusId : <input type="text" name="statusId"
			value="${task.statusId }" readonly="readonly"><br> <br>
			<input type="submit" value="Update Task">
	</form>
</body>
</html>