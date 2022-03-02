<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Status</title>
</head>
<body>
<h2>New Status</h2>
<form action="savestatus" method="POST">
	Status:<input type="text" name="statusName"><br><br>
	<input type="submit" value="Add status">
</form>
</body>
</html>