package controllerUnidad5;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Contacto")
public class ContactoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ContactoServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getServletContext().getRequestDispatcher("/view/contacto.jsp").forward(request, response);
		HttpSession s1=request.getSession();
		HttpSession s2=request.getSession();
		
		String us = (String)s1.getAttribute("usuario");
		String pa = (String)s2.getAttribute("password");
		
		if (us==null||pa==null) {
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		}
		
		if (us.equals("admin")&& pa.equals("1234")) {
			getServletContext().getRequestDispatcher("/view/contacto.jsp").forward(request, response);
			} else {
			System.out.println("NO SE PUDO INICIAR LA SESION");
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
			}

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		//String mensaje = "Tu mensaje ha sido enviado con exito. Gracias por contactarte con nosotros";
		HttpSession sesion=request.getSession(true);
		
		if (request.getParameter("nombre")==""||request.getParameter("apellido")==""||request.getParameter("email")==""||
				request.getParameter("telefono")==""||request.getParameter("asunto")==""||request.getParameter("mensaje")=="") {
		
			getServletContext().getRequestDispatcher("/view/contacto.jsp").forward(request, response);
		}else {
				
			System.out.println("Nombre: "+request.getParameter("nombre")+"\n"+
					"Apellido: "+request.getParameter("apellido")+"\n"+
					"email: "+request.getParameter("email")+"\n"+
					"telefono: "+request.getParameter("telefono")+"\n"+
					"Asunto: "+request.getParameter("asunto")+"\n"+
					"Mensaje: "+request.getParameter("mensaje")+"\n");
			
			//request.setAttribute("mensaje", "Tu mensaje ha sido enviado con exito. Gracias por contactarte con nosotros"));
			//request.getAttribute("mensaje");
		}
		
		
		getServletContext().getRequestDispatcher("/view/inicio.jsp").forward(request, response);
	}
		
}
