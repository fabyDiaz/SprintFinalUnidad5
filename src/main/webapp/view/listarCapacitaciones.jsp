<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
	
	<link href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"
		rel="stylesheet" />
		
		<style>
	<%@ include file="/css/style.css" %>
	</style>
	<script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file="cabecera.jsp"%>
	<br>
	<h1>Listado de las capacitaciones</h1>	
	<br>
	
	<div class="container">
	
	<main>
	
		<div class="d-grid gap-2 col-2 mx-auto">
  			<a class="btn btn-primary"
					href="${pageContext.request.contextPath}/CrearCapacitacion?op=new">Nueva
					Capacitacion</a>
		</div>
		
			
			<br><br>
			<table class="table" id="estudiantes">
				<thead class="table-dark">
					<tr>
						<th>Id</th>
						<th>RUT</th>
						<th>Día</th>
						<th>Hora</th>
						<th>Lugar</th>
						<th>Duración</th>
						<th>Cant. Asistentes</th>
						<th>Acción</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cap" items="${capacitaciones}">
						<tr>
							<th><c:out value="${cap.getIdCap()}"></c:out></th>
							<td><c:out value="${cap.getRut()}"></c:out></td>
							<td><c:out value="${cap.getDia()}"></c:out></td>
							<td><c:out value="${cap.getHora()}"></c:out></td>
							<td><c:out value="${cap.getLugar()}"></c:out></td>
							<td><c:out value="${cap.getDuracion()}"></c:out></td>
							<td><c:out value="${cap.getCantAsistentes()}"></c:out></td>
						
				
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
		src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

	<script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#estudiantes').DataTable();
		});
	</script>
	
	
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>