<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form method="POST" action="LoginController">
		<label for="usuario">Usuario:</label>
		<input name="usuario"  type="text"></input><br>
		<label for="password">Password:</label>
		<input name="password" type="password"></input><br>
		<input type="submit" value="iniciar sesión"></input>
	</form>
</body>
</html>