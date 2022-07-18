package controllerUnidad5;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CerrarSesion")
public class CerrarSesionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CerrarSesionServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		
		HttpSession sesion = request.getSession();
		
		/* String inicio="login";
		 String login="Iniciar Sesión";
		 
		 request.setAttribute("inicio", inicio);
		 request.setAttribute("login", login);
  	        	
		  
    	HttpSession s1=request.getSession();
		HttpSession s2=request.getSession();
		
		String us = (String)s1.getAttribute("usuario");
		String pa = (String)s2.getAttribute("password");
		
    	if (us!=null && us!=""&&pa!="") {
			//if (us.equals("admin")&& pa.equals("1234")) {
				inicio = "Bienvenido/a "+us;
    			login = "Cerrar Sesión";
    			request.setAttribute("inicio", inicio);
    			request.setAttribute("login", login);
				//}
		}else{
			login="Iniciar Sesión";
			request.setAttribute("login", login);
		}*/
				
		sesion.invalidate();
		//request.setAttribute("mensaje", "Iniciar sesión");
		request.getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		
		//getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		
	}

}
