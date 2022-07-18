<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<style>
	<%@ include file="/css/style.css" %>
	</style>

</head>
<body>
	<%@ include file="cabecera.jsp"%>

	<h1>CONTÁCTANOS</h1>
	<aside>
		<p>Escribe a</p>
		<a href="mailto:sdigitalys@gmail.com">contacto@EAPR.com</a>
		<p>Llama a</p>
		<a href="tel:+5699999999">+56 9 9999 9999</a>
	</aside>
	
	<h2>Escríbenos y en breve nos pondremos en contacto contigo</h2>
	<br>

	<div class="container" id="formularioContacto">

		<div class="row">
			<div
				class="col-4 shadow-sm p-4 mb-5 bg-light rounded position-absolute start-50 translate-middle-x">
				
				
				<form action= "Inicio" method="post" class="row g-4">

					<div class="col-md-6">
						<input type="text" class="form-control" id="inputnombre"
							placeholder="Nombre">
					</div>
					<div class="col-md-6">
						<input type="text" class="form-control" id="inputapellido"
							placeholder="Apellido">
					</div>

					<div class="col-md-6">
						<input type="text" class="form-control" id="inpuemail"
							placeholder="Correo electrónico">
					</div>
					<div class="col-md-6">
						<input type="text" class="form-control" id="inputtelefono"
							placeholder="Teléfono">
					</div>

					<div class="col-12">
						<input type="text" class="form-control" id="inputAsunto"
							placeholder="Asunto">
					</div>
					<div class="col-12">
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" placeholder="Escribe aquí tu mensaje"></textarea>
					</div>
					
					<div class="d-grid gap-2 col-6 mx-auto p-3">
  						<button class="btn btn-primary" type="submit">Enviar</button>
					</div>

				</form>
			</div>
		</div>



	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous">
		
	</script>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>


</body>
</html>