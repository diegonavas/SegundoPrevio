<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
	class="navbar-brand" href="#">Navbar</a>
<button class="navbar-toggler" type="button" data-toggle="collapse"
	data-target="#navbarNav" aria-controls="navbarNav"
	aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarNav">
	<ul class="navbar-nav">
		<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
				<span class="sr-only">(current)</span>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="agregarParticipante.jsp">AgregarParticipante</a></li>
		<li class="nav-item"><a class="nav-link" href="addEquipo.jsp">Agregar Equipo</a></li>
		<li class="nav-item"><a class="nav-link" href="pParticipantes.jsp">Ver Participantes</a></li>
		<li class="nav-item"><a class="nav-link disabled" href="verParticipantes.jsp">Ver Participantes</a>
		</li>
	</ul>
</div>
</nav>

<body>
	
	<h2>Actualizar Participante</h2>
	
	<c:set var="participante" scope="request" value="${requestScope.participante}"></c:set>
	<form action="ActualizarParticipanteController" method = "post">
	<div class="form-group row">
    	<label for="inputPassword" class="col-sm-2 col-form-label">id</label>
    	<div class="col-sm-10">
      	<input type="text" class="form-control" name = "id" id="inputPassword" placeholder="Id" value = "${participante.id}">
    	</div>
  	</div>
	<div class="form-group row">
    	<label for="inputPassword" class="col-sm-2 col-form-label">Nombre</label>
    	<div class="col-sm-10">
      	<input type="text" class="form-control" name = "nombre" id="inputPassword" placeholder="Nombre" value = "${participante.nombre}">
    	</div>
  	</div>
  	<div class="form-group row">
    	<label for="inputPassword" class="col-sm-2 col-form-label">correo</label>
    	<div class="col-sm-10">
      	<input type="text" class="form-control" name = "correo" id="inputPassword" placeholder="Nombre" value = "${participante.correo}">
    	</div>
  	</div>
  	<div class="form-group row">
    	<label for="inputPassword" class="col-sm-2 col-form-label">Nombre</label>
    	<div class="col-sm-10">
      	<input type="text" class="form-control" name = "telefono" id="inputPassword" placeholder="Nombre" value = "${participante.telefono}">
    	</div>
  	</div>
  	<button type="submit" class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" style='width:150px; height:50px;'>Actualizar</button>
  </form>
</body>
</html>