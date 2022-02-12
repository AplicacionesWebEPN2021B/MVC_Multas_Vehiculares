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
    
    
<title>Consulta de multas</title>
</head>
<body>
	<H1>Consulta de multas pendientes</H1>
	<form method="POST" action="LoginController">
		<fieldset>
			<h3>Seleccione tipo de b&uacute;squeda</h3>
			<input type="radio" name="placaChasis" value="r"> Placa <input type="radio" name="placaChasis" value="r1"> Chasis
			<br>
			<label for="txtDato">Ingrese dato</label>
			<br>
			<input type="text" name="txtPlacaChasis">
			<input type="submit" name="consultar">
			
			
		</fieldset>
	</form>

</body>
</html>