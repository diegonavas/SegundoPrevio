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
<link rel="stylesheet" type = "text/css" href = "css/estilo.css">

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
		</li>
	</ul>
</div>
</nav>
<body>
	<form method="POST" action="RegistroEquipoController">
		<br>
		<h2>Registro de Nuevo equipo</h2>
		<br>
		<h4>Nombre</h4>
		<input id = "campo" class="form-control" type="text" name="nombre"
			placeholder="Nombre">
		<h4>Coach</h4>
		<select class="form-control" id="sel1" name="coach">
			<jsp:useBean id="pDao" class="dao.ParticipanteDao" scope="request"></jsp:useBean>
			<c:forEach var="participante" items="${pDao.list()}">
				<option><c:out
						value="${participante.id } ${participante.nombre}"></c:out>
				</option>
			</c:forEach>
		</select>
		<h4>Universidad</h4>
		<select class="form-control" id="sel1" name="universidad">
			<jsp:useBean id="uDao" class="dao.UniversidadDao" scope="request"></jsp:useBean>
			<c:forEach var="universidad" items="${uDao.list()}">
				<option><c:out
						value="${universidad.id } ${universidad.nombre}"></c:out>
				</option>
			</c:forEach>
		</select> <br>
		<center>
			<button id = "guardar" type="submit"
				class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
				style='width: 150px; height: 50px;' href="LogIn.html">Guardar</button>
			
	</form>
</body>
</html>