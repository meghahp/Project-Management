<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="savetask" method="post">
		Module id = <select name="moduleId">
			<option>Select Module</option>
			<c:forEach items="${module}" var="m">
			 <option value="${m.moduleId}"> ${m.moduleName}</option>
			</c:forEach>
		</select><br> 
		Project id = <select name="projectId">
			<option> select Project</option>
			<c:forEach items="${project}" var="p">
			 <option value="${p.projectId}"> ${p.projectTitle}</option>
			</c:forEach>
		</select><br> 
		Title = <input type="text" name="title"><br>
		Priority = <input type="text" name="priority"><br>
		Description = <input type="text" name="description"><br>
		statusId = <select name="statusId">
			<option>---------select status-------</option>
			<c:forEach items="${status}" var="s">
				<option value="${s.statusId}">${s.statusName}</option>
			</c:forEach>
			</select> <br>
		TotalMinutes = <input type="text" name="totalMinutes"><br>
		<input type="submit" Value="Submit">
	</form>
</body>
</html>

</body>
</html>