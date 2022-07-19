package Interfaces;

import java.util.List;

import model.entity.Capacitacion;
import model.entity.Usuario;

public interface IUsuarios {

	public List<Usuario> MostrarCapacitaciones();   
	 
	 public Usuario LeerCapacitaciones(int run);

	 public void CrearCapacitaciones(Usuario u);
}
