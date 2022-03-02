<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login</h1>

<form method="POST" action="saveuser">
	Email:<input type="text" name="email"><br><br>
	Password:<input type="password" name="password"><br><br>
	<input type="submit" value="login">
	
</form>
${error}${msg}
<br>
<a href="signup">New User?</a> | 
<a href="forgetpassword">ForgetPassword</a>

</body>
</html>