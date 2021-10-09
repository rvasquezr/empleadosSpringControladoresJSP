<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css" type="text/css" >
<title>Login</title>
</head>
<body>
	<section class="form-register">
				<form action="/login" method="post">
				
					<h1> Account Login</h1>
					<input class="controls" type="text" name="username" id="nombres"	placeholder="Username"><br/>
					<input class="controls"	type="password" name="password" id="apellidos"	placeholder="Password"><br/>
					<input class="botons" type="submit" value="Sign In">

				</form>
			 
		</section>
</body>
</html>