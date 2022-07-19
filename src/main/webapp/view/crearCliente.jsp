<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<style><%@ include file="/css/style.css"%></style>
</head>

<body>

<%@ include file="cabecera.jsp"%>

	<h1>Crear Cliente</h1>

	<div class="container" id="formularioCliente">

		<div class="row">
			<div
				class="col-4 shadow-sm p-4 mb-5 bg-light rounded position-absolute start-50 translate-middle-x">
				<form class="row g-2">
					<p>
						<b>Datos del Cliente</b>
					</p>

					<div class="col-mb-12">
						<label for="nombreUsuario" class="form-label">teléfono</label>
						<input type="text" class="form-control" id="inputnombre" name=nombreU
							placeholder="Nombre">
					</div>
					<div class="col-mb-12">
						<label for="apellidoUsuario" class="form-label">AFP</label>
						<input type="text" class="form-control" id="inputapellido" name=apellidoU
							placeholder="Apellido">
					</div>
					
					<div class="mb-2">
						<label for="tipoUsuario" class="form-label">Sistema de Salud</label>
						<select class="form-select" aria-label="Default select example">
  							<option selected>Selecciona sistema</option>
  							<option value="1">FONASA</option>
  							<option value="2">ISAPRE</option>
					</select>
					</div>
					<div class="d-grid gap-2 col-6 mx-auto p-3">
						<button class="btn btn-primary" type="submit">Enviar</button>
					</div>

				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>

</body>
</html>