<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="cabecera.jsp"%>

	<div class="container">
		<div class="row">
			<div
				class="col-4 shadow-sm p-3 mb-5 bg-light rounded position-absolute top-50 start-50 translate-middle">
				<form action="Ingreso" method="post">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Usuario</label>
						<input type="text" class="form-control" id="usuarioid"
							name="usuario" aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Contraseña</label>
						<input type="password" class="form-control" name="password"
							id="exampleInputPassword1">
					</div>

					<button type="submit" class="btn btn-primary">Ingresar</button>
					
					<p>	
					<% 
					//out.println(request.getAttribute("mensaje"));
					%>
					</p>			
					
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