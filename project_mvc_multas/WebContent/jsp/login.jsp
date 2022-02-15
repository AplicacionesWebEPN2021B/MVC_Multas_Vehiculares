<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
		rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
		crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_style.css">
<title>Login</title>
</head>
<body class="bg-light">
	<%@include file="../templates/banner_interno.html" %>
	
	<div class="content-login w-100 d-flex flex-column justify-content-center align-items-center">
		<h1>LOGIN</h1>
		<form method="POST" action="LoginController">
			<div class="container mt-5">
			    <div class="row d-flex justify-content-center ">
			        <div class="w-100 col-md-6">
			            <div class="card px-5 py-5" id="form1">
			                <div class="form-data">
			                    <div class="forms-inputs mb-4"> 
			                    	<span class="h3">Usuario</span> <br>
			                    	<input type="text" name="usuario">
			                    </div>
			                    <div class="forms-inputs mb-4"> 
			                    	<span class="h3">Password</span> <br>
			                    	<input type="password" name="password">
			                    </div>
			                    <div class="mb-3"> 
			                    	<input type="submit" value="login" class="btn btn-primary w-100"></input> 
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
		</form>
	</div>
</body>
</html>
