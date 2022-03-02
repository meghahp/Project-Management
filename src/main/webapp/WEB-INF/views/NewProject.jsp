<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Project</title>
</head>
<body>
<h2>Add New Project</h2>
<form action="saveproject" method="post">
	Project Title:<input type="text" name="projectTitle"><br><br>
	Description:<input type="text" name="description"><br><br>
	Technology:<input type="text" name="technology"><br><br>
	Start Date:<input type="text" name="startDate"><br><br>
	End Date:<input type="text" name="endDate"><br><br>
	Estimated Time:<input type="number" name="estimatedHours"><br><br>
	Status:<select name="statusId">
		 		<option>Select Status</option>
		 		<c:forEach items="${status}" var="s">
		 			<option value="${s.statusId}">${s.statusName}</option>		 			
		 		</c:forEach>
		 	</select><br><br>
	<input type="submit" value="Add Status">

</form>
</body>
</html>