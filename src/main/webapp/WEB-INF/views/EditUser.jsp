<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
</head>
<body>
<form action="updateuser" method="post">
		<input type="hidden" value="${user.userId}" name="userId" />
		
		FirstName:<input type="text" name="firstName" value="${user.firstName} "/><br><br>
		<input type="submit" value="Update user"/>
	</form>
</body>
</html>