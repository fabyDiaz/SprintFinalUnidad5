package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.Conexion;
import model.entity.Capacitacion;
import model.entity.Usuario;

public class UsuarioDAO implements IUsuarioDAO {

	@Override
	public void create(Usuario u){
		try {
			
			String sql = "INSERT INTO asesoriaspr_db.usuario (run, usuario, password, nombre, apellido, fechaNacimiento, tipo) VALUES ('"+u.getRun()+"', '"+
			u.getUsuario()+"', '"+u.getPassword()+"', '"+u.getNombre()+"', '"+u.getApellido()+"', '"+u.getFechaNacimiento()+"', '"+1+"');";
			
			Connection cnn = Conexion.getConnection();
			
			Statement stm = cnn.createStatement();
			
			stm.execute(sql);
						
			
		} catch (SQLException e) {
			System.out.println("Error al consultar la BD");
			e.printStackTrace();
		}

	}

	@Override
	public List<Usuario> read() {
		List<Usuario> us = new ArrayList<Usuario>();
		
		try {
			
			String sql = "select run, usuario, password, nombre, apellido, fechaNacimiento, tipo from usuario";
			Connection cnn = Conexion.getConnection();
			
			Statement stm = cnn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			
			while(rs.next()) {		
				
				us.add(new Usuario(rs.getString("usuario"),rs.getString("password"),rs.getString("nombre"),
						rs.getString("apellido"),rs.getString("fechaNacimiento"),
						rs.getInt("run"),rs.getInt("tipo")));
			}
			
			
			
		} catch (SQLException e) {
			System.out.println("Error al consultar la BD");
			e.printStackTrace();
		}
		
		return us;
	}

	@Override
	public Usuario read(int run) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Usuario u) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int run) {
		// TODO Auto-generated method stub

	}

}
