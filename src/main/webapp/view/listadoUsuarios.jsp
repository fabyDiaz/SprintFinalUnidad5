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
	<link href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"
		rel="stylesheet" />
	
	<style>
	<%@ include file="/css/style.css" %>
	</style>
</head>
<body>
	
	<%@ include file="cabecera.jsp"%>
	
	<h1>Aqui se incluirá una tabla con el listado de los usaurio y su información</h1>
	
	<div class="container">
	
	<main>
	
		<div class="d-grid gap-2 col-2 mx-auto">
  			<a class="btn btn-primary"
					href="${pageContext.request.contextPath}/CrearUsuario?op=new">Nuevo Usuario</a>
		</div>
		
			
			<br><br>
			<table class="table" id="usuariotabla">
				<thead class="table-dark">
					<tr>
						<th>RUN</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Fecha Nacimiento</th>
						<th>Tipo</th>
						<th>Acción</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="us" items="${usuarios}">
						<tr>
							<th><c:out value="${us.getRun()}"></c:out></th>
							<td><c:out value="${us.getNombre()}"></c:out></td>
							<td><c:out value="${us.getApellido()}"></c:out></td>
							<td><c:out value="${us.getFechaNacimiento()}"></c:out></td>
							<td><c:out value="${cap.getTipo()}"></c:out></td>
					
							<td><a
								href="${pageContext.request.contextPath}/ListarCapacitaciones?op=edit&id=${cap.getIdCap()}"><i
									class="fa-solid fa-pen-to-square"></i></a> | <a
								href="${pageContext.request.contextPath}/ListarCapacitacion?op=del&id=${estudiante.getId()}"><i
									class="fa-solid fa-trash"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</main>
	</div>
	
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
		
		<script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>

</body>
</html>