<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actualizar Vehiculo</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">

</head>
<body>
	<%@include file="../templates/banner_interno.html" %>
	<h1>Actualizar Vehiculo</h1>
	
	<form method="POST" action="ActualizarVehiculoController">
		<fieldset>
			<input type="hidden" name="txtVehiculo" value="${idVehiculo}">
			<label for="txtPlaca">PLACA:</label>
			<input type="text" name="txtPlaca" value="${placa}" required>
			<br>
			<label for="txtMarca">MARCA:</label>
			<input type="text" name="txtMarca" value="${marca}" required>
			<br>
			<label for="txtAnio">A�O:</label>
			<input type="text" name="txtAnio" value="${anio}" pattern="\d{4}$" required>
			<br>
			<label for="txtModelo">MODELO:</label>
			<input type="text" name="txtModelo" value="${modelo}" required>
			<br>
			<label for="txtChasis">CHASIS:</label>
			<input type="text" name="txtChasis" value="${chasis}" required>
			<br>
			<label for="txtPropietario">PROPIETARIO:</label>
			<input type="text" name="txtPropietario" value="${propietario}" required>
			<br>			
			<input type="submit" value="Guardar">
			
		</fieldset>	
	</form>
	
	
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>