<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	
	<style><%@ include file="/css/style.css"%></style>
	
</head>


<body>

	<%@ include file="cabecera.jsp"%>
	
	 <h1>Crear Nueva Capacitación</h1>

	<div class="container" id="formularioCapacitacion">

		<div class="row">
			<div class="col-4 shadow-sm p-4 mb-5 bg-light rounded position-absolute start-50 translate-middle-x">
				
				<form action="${pageContext.request.contextPath}/ListarCapacitaciones?op=lista" method="post" class="row g-2 needs-validation" novalidate>
				
				<input type="hidden" id="id" name="id" value="${cap.getIdCap()}">	
					<p>
						<b>Datos de la capacitación</b>
					</p>

					<div class="col-mb-2">
						<label for="rut" class="form-label">RUT</label>
						<input type="text" class="form-control" id="rutCap" name= rutCap
							placeholder="11111111-1" required>
					</div>
					<div class="col-md-6">
						<label for="dia" class="form-label">Día</label>
						<input type="text" class="form-control" id="diaCap" name = diaCap
							placeholder="Lunes" required>
					</div>

					<div class="col-md-6">
						<label for="hora" class="form-label">Hora</label>
						<input type="text" class="form-control" id="horaCap" name= horaCap
							placeholder="12:00" required>
					</div>
					
					<div class="col-mb-2">
						<label for="duracion" class="form-label">Duración</label>
						<input type="text" class="form-control" id="duracionCap" name = duracionCap
							placeholder="15 minutos" required>
					</div>
					
					<div class="col-mb-2">
						<label for="lugar" class="form-label">Lugar</label>
						<input type="text" class="form-control" id="lugarCap" name=lugarCap
							placeholder="Santiago" required>
					</div>
					
					<div class="col-mb-2">
						<label for="cantAsistentes" class="form-label">Cantidad de Asistentes</label>
						<input type="text" class="form-control" id="cantCap" name= cantCap
							placeholder="10" required>
					</div>

					<div class="d-grid gap-2 col-6 mx-auto p-3">
						<button class="btn btn-primary" type="submit">Enviar</button>
					</div>
					
					<c:out value = "${mensaje}"/>

				</form>
				
			</div>
		</div>



	</div>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<script type="text/javascript"><%@ include file="/js/validacion.js" %></script>
		
</body>
</html>