<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Programacion</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<link rel="stylesheet" type = "text/css" href = "css/style.css">
</head>
<body>

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

	<br><h2>Participantes</h2>
	<a href = "pParticipante.jsp"><button id="nuevo" type="button" class="btn btn-danger">Nuevo</button></a>
	
	<table class="table table-hover table-dark">
	<jsp:useBean id="pDao" class="dao.ParticipanteDao" scope="request"></jsp:useBean>
  <thead>
    <tr>
      
      <th scope="col">Nombre</th>
      <th scope="col">Correo</th>
      <th scope="col">Telefono</th>
      <th scope="col">Acciones</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="participante" items="${pDao.list() }">
    <tr>
      
      <td><c:out value="${participante.nombre}" /></td>
      <td><c:out value="${participante.correo}" /></td>
      <td><c:out value="${participante.telefono}" /></td>
      <td><c:out value="${participante.id}"></c:out><a href = "EliminarParticipanteController?id=${participante.id}">Eliminar</a>
      <a href = "ActualizarParticipanteController?id=${participante.id}">Editar</a></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>