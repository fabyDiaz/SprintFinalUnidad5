package controllerUnidad5;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Interfaces.ICapacitaciones;
import Interfaces.IUsuarios;
import implementacion.ImplementarUsuario;
import implementacion.ImplentarCapactiacion;
import model.entity.Usuario;

@WebServlet("/ListadoUsuario")
public class ListadoUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private IUsuarios impUs= new ImplementarUsuario();
	
    public ListadoUsuarioServlet() {
        super();  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getServletContext().getRequestDispatcher("/view/listadoUsuarios.jsp").forward(request, response);
		HttpSession s1=request.getSession();
		HttpSession s2=request.getSession();
		
		String us = (String)s1.getAttribute("usuario");
		String pa = (String)s2.getAttribute("password");
		
		if (us==null||pa==null) {
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		}
		
		if (us.equals("admin")&& pa.equals("1234")) {
			
			request.setAttribute("usuarios", impUs.MostrarUsuarios());		
			getServletContext().getRequestDispatcher("/view/listadoUsuarios.jsp").forward(request, response);
			} else {
			System.out.println("NO SE PUDO INICIAR LA SESION");
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
			}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		if (Integer.parseInt(request.getParameter("tipoU"))==1) {
			getServletContext().getRequestDispatcher("/view/crearAdministrativo.jsp").forward(request, response);
		}else if(Integer.parseInt(request.getParameter("tipoU"))==2){
			getServletContext().getRequestDispatcher("/view/crearCliente.jsp").forward(request, response);
		}else if(Integer.parseInt(request.getParameter("tipoU"))==3) {
			getServletContext().getRequestDispatcher("/view/crearProfesional.jsp").forward(request, response);
		}
		
		
		Usuario us = new Usuario(); 
		
		System.out.println("Hasta aqui va bien");
		
		if (request.getParameter("nombreU")==""||request.getParameter("apellidoU")==""||request.getParameter("runU")==""||
				request.getParameter("fechaU")==""||request.getParameter("usuarioU")==""||request.getParameter("tipoU")==""
				||request.getParameter("emailU")==""||request.getParameter("passU")=="") {
		
			getServletContext().getRequestDispatcher("/view/crearCapacitacion.jsp").forward(request, response);
		}else {
		
			us.setRun(Integer.parseInt(request.getParameter("runU")));
			us.setNombre(request.getParameter("nombreU"));
			us.setApellido(request.getParameter("apellidoU"));
			us.setFechaNacimiento(request.getParameter("fechaU"));
			us.setUsuario(request.getParameter("usuarioU"));
			us.setTipo(Integer.parseInt(request.getParameter("tipoU")));
			us.setPassword(request.getParameter("passU"));
			System.out.println(us);
			
			impUs.CrearUsuarios(us);
			//request.setAttribute("op", "lista");
			request.setAttribute("usuarios", impUs.MostrarUsuarios());
			getServletContext().getRequestDispatcher("/view/listarCapacitaciones.jsp").forward(request, response);
			
			
		}
	}

}
