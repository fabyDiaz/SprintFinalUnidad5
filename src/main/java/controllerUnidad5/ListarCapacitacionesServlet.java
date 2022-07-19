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

import Interfaces.ICapacitaciones;
import implementacion.ImplentarCapactiacion;
import model.entity.Capacitacion;

@WebServlet("/ListarCapacitaciones")
public class ListarCapacitacionesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ICapacitaciones impCap= new ImplentarCapactiacion();
 
    public ListarCapacitacionesServlet() {
        super();

    }
    
   // ImplentarCapactiacion impCap= new ImplentarCapactiacion();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getServletContext().getRequestDispatcher("/view/listarCapacitaciones.jsp").forward(request, response);
		
	request.setAttribute("capacitaciones",impCap.MostrarCapacitaciones());
		
		HttpSession s1=request.getSession();
		HttpSession s2=request.getSession();
		
		String us = (String)s1.getAttribute("usuario");
		String pa = (String)s2.getAttribute("password");
		
		if (us==null||pa==null) {
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		}
		
		if (us.equals("admin")&& pa.equals("1234")) {
			request.setAttribute("capacitaciones", impCap.MostrarCapacitaciones());
			getServletContext().getRequestDispatcher("/view/listarCapacitaciones.jsp").forward(request, response);
			} else {
			System.out.println("NO SE PUDO INICIAR LA SESION");
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		}
		
		
	/*	String op= new String ("op");
		
		if (op.equalsIgnoreCase("new")) {
			//request.setAttribute("op", op);
			getServletContext().getRequestDispatcher("/view/crearCapacitacion.jsp").forward(request, response);
		}else {
			if (op.equalsIgnoreCase("edit")) {
				
				String id= new String ("id");
				if(id!=null) {
					//request.setAttribute("capacitaciones", impCap.ObtenerCapacitacion(Integer.parseInt(id)));
					//request.setAttribute("capacitaciones", impCap.MostrarCapacitaciones());
					//request.setAttribute("op", op);
					getServletContext().getRequestDispatcher("/view/crearCapacitacion.jsp").forward(request, response);
				}else{
					getServletContext().getRequestDispatcher("/view/listarCapacitaciones.jsp").forward(request, response);
				}
			}
			
			
		}*/
	
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		String op= request.getParameter("op");
		//String Jsp = "/view/listarCapacitaciones.jsp";
		
		if (op.equalsIgnoreCase("lista")) {
			//HttpSession sesion=request.getSession(true);
			//List<Capacitacion> ListaCap = (List<Capacitacion>) sesion.getAttribute("capacitaciones");
			//List<Capacitacion> listaCap = new ArrayList<Capacitacion>();
			
			Capacitacion cap = new Capacitacion(); 
			
			System.out.println("Hata aqui va bien");
			
			String mensaje="Debe llenar todos los datos del formulario";
			request.setAttribute("mensaje", mensaje);
			
			if (request.getParameter("rutCap")==""||request.getParameter("diaCap")==""||request.getParameter("horaCap")==""||
					request.getParameter("duracionCap")==""||request.getParameter("lugarCap")==""||request.getParameter("cantCap")==""
					||request.getParameter("cantCap")=="") {
			
				getServletContext().getRequestDispatcher("/view/crearCapacitacion.jsp").forward(request, response);
			}else {
				//cap.setIdCap(Integer.parseInt(request.getParameter("idCap")));   
				//System.out.println("Este es el id "+ impCap. UltimoIDLista()+1);
				cap.setRut(request.getParameter("rutCap"));
				cap.setDia(request.getParameter("diaCap"));
				cap.setHora(request.getParameter("horaCap"));
				cap.setDuracion(request.getParameter("duracionCap"));
				cap.setLugar(request.getParameter("lugarCap"));
				System.out.println(request.getParameter("lugarCap"));
				cap.setCantAsistentes(Integer.parseInt(request.getParameter("cantCap")));
				System.out.println(Integer.parseInt(request.getParameter("cantCap")));
				
				
				impCap.CrearCapacitaciones(cap);
				//request.setAttribute("op", "lista");
				request.setAttribute("capacitaciones", impCap.MostrarCapacitaciones());
				getServletContext().getRequestDispatcher("/view/listarCapacitaciones.jsp").forward(request, response);
				/*listaCap=impCap.MostrarCapacitaciones();
				
				sesion.setAttribute("capacitaciones", listaCap);
				request.setAttribute("capacitaciones", sesion.getAttribute("capacitaciones"));
				System.out.println("Aqui me deberia mostrar algo "+sesion.getAttribute("capacitaciones"));
				getServletContext().getRequestDispatcher("/view/listarCapacitaciones.jsp").forward(request, response);*/
				
				
			}
			
					
		}
		
		
	}
}
