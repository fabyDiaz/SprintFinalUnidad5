<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

	<h1>Crear Nuevo Usuario</h1>

	<div class="container" id="formularioUsuario">

		<div class="row">
			<div
				class="col-4 shadow-sm p-4 mb-5 bg-light rounded position-absolute start-50 translate-middle-x">
				
				
				<form class="row g-2 needs-validation"  action="ListadoUsuario" method="post" novalidate >
					<p>
						<b>Datos del usuario</b>
					</p>

					<div class="col-md-6">
						<label for="nombreUsuario" class="form-label">Nombre</label>
						<input type="text" class="form-control" id="inputnombre" name=nombreU
							placeholder="Nombre" required>
					</div>
					<div class="col-md-6">
						<label for="apellidoUsuario" class="form-label">Apellido</label>
						<input type="text" class="form-control" id="inputapellido" name=apellidoU
							placeholder="Apellido" required>
					</div>

					<div class="col-md-6">
						<label for="runUsaurio" class="form-label">RUN</label>
						<input type="text" class="form-control" id="inputtelefono" name= runU
							placeholder="sin guión, ni digito verificador" required>
					</div>

					<div class="col-md-6">
						<label for="fechaUsuario" class="form-label">fecha
							de Nacimiento</label> <input type="date" class="form-control" name = fechaU
							id="fechaid" required>
					</div>
					<p>
					<br>
						<b>Crear cuenta</b>
					</p>

					<div class="mb-2">
						<label for="usuarioUsaurio" class="form-label">Usuario</label>
						<input type="text" class="form-control" id="usuarioU" name= "usuarioU"
							aria-describedby="emailHelp" required> 
					</div>
					
					<div class="mb-2">
						<label for="tipoUsuario" class="form-label">Tipo de Usuario</label>
						<select class="form-select" aria-label="Default select example" name="tipoU" required>
  							<option selected disabled value="">Selecciona el tipo de usuario</option>
  							<option value="1">1. Administrativo</option>
  							<option value="2">2. Cliente</option>
  							<option value="3">3. Profesional</option>
					</select>
					</div>
					

					<div class="mb-2">
						<label for="correoUsuario" class="form-label">Correo
							electrónico</label> <input type="email" class="form-control" name= emailU
							id="emailU" aria-describedby="emailHelp" required>
					</div>

					<div class="mb-2">
						<label for="contrasenaUsuario" class="form-label">Contraseña</label>
						<input type="password" class="form-control" name= passU
							id="passU" required>
					</div>
					<div class="mb-2 form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="CheckboxUsuario">Acepto 
							terminos y condiciones</label>
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
	<script><%@ include file="/js/validacion.js" %></script>

</body>
</html>