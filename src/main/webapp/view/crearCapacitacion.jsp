<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
</head>
<style><%@ include file="/css/style.css"%></style>
<body>

	<%@ include file="cabecera.jsp"%>
	
	 <h1>Crear Nueva Capacitación</h1>

	<div class="container" id="formularioCapacitacion">

		<div class="row">
			<div class="col-4 shadow-sm p-4 mb-5 bg-light rounded position-absolute start-50 translate-middle-x">
				
				<form action="${pageContext.request.contextPath}/ListarCapacitaciones?op=lista" method="post" class="row g-2">
				
				<input type="hidden" id="id" name="id" value="${cap.getIdCap()}">	
					<p>
						<b>Datos de la capacitación</b>
					</p>

					<div class="col-mb-2">
						<label for="rut" class="form-label">RUT</label>
						<input type="text" class="form-control" id="inputnombre" name= rutCap
							placeholder="Rut">
					</div>
					<div class="col-md-6">
						<label for="dia" class="form-label">Día</label>
						<input type="text" class="form-control" id="inputapellido" name = diaCap
							placeholder="Dia de la capacitación">
					</div>

					<div class="col-md-6">
						<label for="hora" class="form-label">Hora</label>
						<input type="text" class="form-control" id="inputtelefono" name= horaCap
							placeholder="Hora de la capacitación">
					</div>
					
					<div class="col-mb-2">
						<label for="duracion" class="form-label">Duración</label>
						<input type="text" class="form-control" id="inputtelefono" name = duracionCap
							placeholder="Duraciónd de la capacitación">
					</div>
					
					<div class="col-mb-2">
						<label for="lugar" class="form-label">Lugar</label>
						<input type="text" class="form-control" id="inputtelefono" name=lugarCap
							placeholder="Lugar de la capacitación">
					</div>
					
					<div class="col-mb-2">
						<label for="cantAsistentes" class="form-label">Cantidad de Asistentes</label>
						<input type="text" class="form-control" id="inputtelefono" name= cantCap
							placeholder="Cantidad de asistentes">
					</div>

					<div class="d-grid gap-2 col-6 mx-auto p-3">
						<button class="btn btn-primary" type="submit">Enviar</button>
					</div>

				</form>
			</div>
		</div>



	</div>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>