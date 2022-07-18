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
	
	<style>
	<%@ include file="/css/style.css" %>
	</style>
</head>

<body>

	<%@ include file="cabecera.jsp"%>
	
	 <section class="with-pattern d-flex align-items-center py-5">
     	<div class="container">
        <div class="row align-items-center">
          <div class="col-md-6 mb-5 mb-md-0">
            <h1 class="mb-3">Capacitaciones y <span class="text-primary">Asesorias </span>sobre prevención de riesgo en tu empresa</h1> 
            <p class="text-muted">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
        	<div class="d-grid gap-2 col-4 mx-auto">
        	<a class="btn btn-primary" role="button" href="${pageContext.request.contextPath}/Ingreso">Iniciar Sesión</a>
			</div>
        </div>
          <div class="col-md-5 ml-auto">
            <img class="float-right img-fluid shadow rounded" src="https://img.freepik.com/foto-gratis/trabajadores-fabrica-mascarillas-protegidas-contra-virus-corona-haciendo-control-calidad-produccion-fabrica_342744-96.jpg?t=st=1657605279~exp=1657605879~hmac=3a69ffde140ab9b13eda349cd355a48b7e984896a8cb4fbd5ed427f191cd9df4&w=996" alt="">
          </div>
        </div>
    </div>
    </section>
    
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>