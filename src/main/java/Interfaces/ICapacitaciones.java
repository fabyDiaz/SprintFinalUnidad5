package Interfaces;

import java.util.List;

import model.entity.Capacitacion;

public interface ICapacitaciones{
	
	 public List<Capacitacion> MostrarCapacitaciones();   
	 
	 public Capacitacion LeerCapacitaciones(int idCap);
 
	 public void CrearCapacitaciones(Capacitacion c);

}
