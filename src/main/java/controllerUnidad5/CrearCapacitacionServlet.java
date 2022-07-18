package controllerUnidad5;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CrearCapacitacion")
public class CrearCapacitacionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CrearCapacitacionServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getServletContext().getRequestDispatcher("/view/crearCapacitacion.jsp").forward(request, response);
		
		HttpSession s1=request.getSession();
		HttpSession s2=request.getSession();
		
		String us = (String)s1.getAttribute("usuario");
		String pa = (String)s2.getAttribute("password");
		
		if (us==null||pa==null) {
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		}
		
		if (us.equals("admin")&& pa.equals("1234")) {
			getServletContext().getRequestDispatcher("/view/crearCapacitacion.jsp").forward(request, response);
			} else {
			System.out.println("NO SE PUDO INICIAR LA SESION");
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
			}
		
		
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
