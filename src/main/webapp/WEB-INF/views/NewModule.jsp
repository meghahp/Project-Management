<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Module</title>
</head>
<body>
<h2>New Module</h2>
<form action="savemodule" method="post">
	 Select Project:<select name="projectId">
		 		<option>Select Project</option>
		 		<c:forEach items="${project}" var="p">
		 			<option value="${p.projectId}">${p.projectTitle}</option>
				</c:forEach>
	</select><br><br> 
	Module Name:<input type="text" name="moduleName"><br><br>
	Description:<input type="text" name="description"><br><br>
	Start Date:<input type="text" name="startDate"><br><br>
	Estimated Hours:<input type="number" name="estimatedHours"><br><br>
	Status:<input type="text" name="status"><br><br>
	
	<input type="submit" value="Add Module"/>
</form>
</body>
</html>