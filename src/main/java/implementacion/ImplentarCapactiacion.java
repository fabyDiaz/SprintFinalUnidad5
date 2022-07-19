package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Interfaces.ICapacitaciones;
import conexion.Conexion;
import model.dao.CapacitacionDAO;
import model.dao.ICapacitacionDao;
import model.entity.Capacitacion;

public class ImplentarCapactiacion implements ICapacitaciones{
	
	ICapacitacionDao dao = new CapacitacionDAO();
		
	//List<Capacitacion> listaCap = new ArrayList<Capacitacion>();
	

	/*public ImplentarCapactiacion() {
		super();
		llenarCapacitacion();
	}*/

	@Override
	public void CrearCapacitaciones(Capacitacion c) {
		 dao.create(c);
			// System.out.println(c.getIdCap());
	}

	@Override
	public List<Capacitacion> MostrarCapacitaciones() {
		return dao.read();
	}
	
	@Override
	public Capacitacion LeerCapacitaciones(int idCap) {
		return dao.read(idCap);
	}
/*	public Capacitacion ObtenerCapacitacion(int id) {
		Capacitacion encontrado=null;
		for (Capacitacion capacitacion:listaCap) {
			if (capacitacion.getIdCap()==id) {
				encontrado=capacitacion;
			}
		}
		return encontrado; 
	}

	 
	 public void llenarCapacitacion() {
		 Capacitacion cap1 = new Capacitacion(1,"12345678","Martes","12:30","Limache","30 minutos",20); 
		 Capacitacion cap2 = new Capacitacion(2,"12345679","Lunes","02:30","Viña del Mar","40 minutos",30); 
		 Capacitacion cap3 = new Capacitacion(3,"12345670","Jueves","16:30","Valparaiso","40 minutos",30);
		 
		 AgregarCapacitaciones(cap1);
		 AgregarCapacitaciones(cap2);
		 AgregarCapacitaciones(cap3);

	 }

	 public int UltimoIDLista() {
		 int i = listaCap.size()-1;
		 return listaCap.get(i).getIdCap()+1;
	 }*/

		
} 
