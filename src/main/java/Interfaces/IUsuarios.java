package Interfaces;

import java.util.List;

import model.entity.Capacitacion;
import model.entity.Usuario;

public interface IUsuarios {

	public List<Usuario> MostrarUsuarios();   
	 
	 public Usuario LeerUsuarios(int run);

	 public void CrearUsuarios(Usuario u);
}
