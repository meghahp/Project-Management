<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Status</title>
</head>
<body>
<form action="updatestatus" method="post">
		<input type="hidden" value="${status.statusId}" name="statusId" />
		
		RoleName:<input type="text" name="statusName" value="${status.statusName} "/><br><br>
		<input type="submit" value="Update Status"/>
	</form>

</body>
</html>