package implementacion;

import java.util.List;

import Interfaces.IUsuarios;
import model.dao.IUsuarioDAO;
import model.dao.UsuarioDAO;
import model.entity.Usuario;

public class ImplementarUsuario implements IUsuarios {

	IUsuarioDAO dao = new UsuarioDAO();
	
	@Override
	public List<Usuario> MostrarCapacitaciones() {
		return dao.read();
	}

	@Override
	public Usuario LeerCapacitaciones(int run) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void CrearCapacitaciones(Usuario u) {
		 dao.create(u);

	}

}
