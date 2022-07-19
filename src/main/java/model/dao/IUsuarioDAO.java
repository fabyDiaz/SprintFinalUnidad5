package model.dao;

import java.util.List;
import model.entity.Usuario;

public interface IUsuarioDAO {

	
	public void create(Usuario u);
	public List<Usuario> read();
	public Usuario read(int run);
	public void update (Usuario u);
	public void delete(int run);
	
}
