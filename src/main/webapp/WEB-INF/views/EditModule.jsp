<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Module</title>
</head>
<body>
<form action="updatemodule" method="post">
		<input type="hidden" value="${module.moduleId}" name="moduleId" />
		
		Module Name:<input type="text" name="moduleName" value="${module.moduleName} "/><br><br>
		Description:<input type="text" name="description" value="${module.description} "/><br><br>
		Status:<input type="text" name="status" value="${module.status} "/><br><br>
		<input type="submit" value="Update Module"/>
	</form>

</body>
</html>