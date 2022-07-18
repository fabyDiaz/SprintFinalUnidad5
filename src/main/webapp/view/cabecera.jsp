<header>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
     <a class="navbar-brand" href="${pageContext.request.contextPath}/Inicio"><img src="https://cdn-icons-png.flaticon.com/512/5058/5058410.png" alt="..." width="50"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/Inicio">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/Contacto">Contacto</a>
        </li>
        
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Capacitaciones
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/CrearCapacitacion">Crear Capacitaciones</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/ListarCapacitaciones">Listar Capacitaciones</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Usuario
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/CrearUsuario">Crear Usuario</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/ListadoUsuario">Listar Usuarios</a></li>
          </ul>
        </li>
     
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="¿Qué buscas?" aria-label="Search">
        <button class="btn btn-warning" type="submit">Buscar</button> 
      </form>
      <% 
        	String inicio="login";
        	String sesion="Iniciar Sesión";
        	        	
        	HttpSession s1=request.getSession();
    		HttpSession s2=request.getSession();
    		
    		String us = (String)s1.getAttribute("usuario");
    		String pa = (String)s2.getAttribute("password");
    		
        	if (us!=null && us!=""&&pa!="") {
    			//if (us.equals("admin")&& pa.equals("1234")) {
    				inicio = "Bienvenido/a "+us;
        			sesion = "Cerrar Sesión";
    				//}
    		}else{
    			sesion="Iniciar Sesión";
    		}
        	%> 
      
      <form action="CerrarSesion" method="post" >
      <ul class="navbar-nav mb-2 mb-lg-0">
        	 <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <%=inicio%>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><button class="dropdown-item" type="submit"  name="s" value="IniciarSesion"><%=sesion%></button>     
          </ul>
        </li>
        
        </ul> 
      </form>
      	
      
      
      </div>
    </div>
</nav>

</header>
