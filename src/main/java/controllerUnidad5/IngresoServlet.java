package controllerUnidad5;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ingreso")
public class IngresoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IngresoServlet() {
        super();
    }
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		//PrintWriter out = response.getWriter();
		
		String u = request.getParameter("usuario");
		String pass= request.getParameter("password");
		
		HttpSession s1=request.getSession();
		HttpSession s2=request.getSession();
		s1.setAttribute("usuario", u);
		s2.setAttribute("password", pass);
		
		String us = (String)s1.getAttribute("usuario");
		String pa = (String)s2.getAttribute("password");
		
		//response.setContentType("text/html");
		//out.println("<html lang='es'><head><meta charset='UTF-8'><title>Insert title here</title><head><body>");
		//out.println("<script type=\"text/javascript\">");
		
		if (us==null||pa==null) {
			
			request.setAttribute("mensaje", "Debe autenticarse para ingresar al sistema");
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
		}
		
		
		if (us.equals("admin")&& pa.equals("1234")) {
			//out.println("alert('Bienvenido/a! \\nIniciaste sesión como: "+us +"')");
			//out.close();
			//out.println("location='/view/contacto.jsp'");
			getServletContext().getRequestDispatcher("/view/contacto.jsp").forward(request, response);
			} else {
			System.out.println("NO SE PUDO INICIAR LA SESION");
			//out.println("alert('!Datos incorrectos!')");
			//out.println("location(/view/ingreso.jsp/))");
			getServletContext().getRequestDispatcher("/view/ingreso.jsp").forward(request, response);
			}
		//out.println("</script></body></html>");
	}

}
