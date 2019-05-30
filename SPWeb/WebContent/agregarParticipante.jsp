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

<h2>Registro Participantes</h2>
	
	<form method="POST" action="RegistroParticipanteController">
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Nombre</label>
    <div class="col-sm-10">
      <input id = "campo" type="text" class="form-control" name = "nombre" id="inputPassword" placeholder="Nombre">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Genero</label>
    <div class="col-sm-10">
      <select id = "campo" name = "genero">
			<option name = "genero">M</option>
			<option name = "genero">F</option>
	  </select>	
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input id = "campo" type="text" class="form-control" name = "email" id="inputPassword" placeholder="E-mail">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Telefono</label>
    <div class="col-sm-10">
      <input id = "campo" type="text" class="form-control" name = "telefono" id="inputPassword" placeholder="Telefono">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Clave</label>
    <div class="col-sm-10">
      <input id = "campo" type="password" class="form-control" name = "clave" id="inputPassword" placeholder="Clave">
    </div>
  </div>
  <button id = "guardar" type="submit" class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0">Registrarme</button>
  <a href = "agregarParticipante.jsp"><button id = "cancelar" type="button" class="btn btn-outline-info">Cancelar</button></a>
</form>
</body>
</html>