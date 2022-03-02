<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Project</title>
</head>
<body>
<form action="updateproject" method="post">
		<input type="hidden" value="${project.projectId}" name="projectId" />
		
		Title:<input type="text" name="projectTitle" value="${project.projectTitle} "/><br><br>
		Description:<input type="text" name="description" value="${project.description} "/><br><br>
		Technology:<input type="text" name="technology" value="${project.technology} "/><br><br>
		<input type="submit" value="Update Project"/>
	</form>

</body>
</html>