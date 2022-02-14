<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/navbar_style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_style.css">
	
    
<title>Consulta de multas</title>
</head>
<body>
	<%@include file="../templates/banner_consulta.html" %>
	
	
	<div class="content-login w-100 d-flex flex-column justify-content-center align-items-center">
		<h1>Consulta de Multas Pendientes</h1>
		<form method="POST" action="ConsultarMultasUsuarioController">
			<div class="container mt-5">
			    <div class="row d-flex justify-content-center ">
			        <div class="w-100 col-md-6">
			            <div class="card px-5 py-5" id="form1">
			                <div class="form-data">
			                    <div class="forms-inputs mb-4"> 
			                    	<h3>Seleccione tipo de b&uacute;squeda</h3><br>
			                    	<input type="radio" name="placaChasis" value="r"> Placa 
									<input type="radio" name="placaChasis" value="r1"> Chasis
			                    </div>
			                    <div class="forms-inputs mb-4"> 
			                    	<label for="txtDato">Ingrese dato</label>
									<br>
									<input type="text" name="txtPlacaChasis">

			                    </div>
			                    <div class="mb-3"> 
			                    	<input type="submit" name="consultar" value="consultar" >
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