<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type = "text/css" href = "css/estilo.css">
</head>
<body>
	<header><h1>S</h1></header>
	<form method="POST" action="RegistroEquipoController">
		<br>
		<h2>Registro de Nuevo equipo</h2>
		<br>
		<h4>Nombre</h4>
		<input id = "campo" class="form-control" type="text" name="nombre"
			placeholder="Nombre">
		<h4>Coach</h4>
		<input id = "campo" class="form-control" type="text" name="coach"
			placeholder="Coach">
		<h4>Universidad</h4>
		<input id = "campo" class="form-control" type="text" name="universidad"
			placeholder="Universidad"> <br>
		<center>
			<button type="submit"
				class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
				style='width: 150px; height: 50px;' href="LogIn.html">Guardar</button>
			
	</form>
</body>
</html>