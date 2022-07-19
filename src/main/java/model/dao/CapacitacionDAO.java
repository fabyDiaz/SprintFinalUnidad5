package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.Conexion;
import model.entity.Capacitacion;

public class CapacitacionDAO implements ICapacitacionDao {

	@Override
	public void create(Capacitacion c) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Capacitacion> read() {
		List<Capacitacion> cap = new ArrayList<Capacitacion>();
		
		try {
			
			String sql = "Select idCap, rut, dia, hora, lugar, duracion, cantAsistentes from capacitacion";
			Connection cnn = Conexion.getConnection();
			
			Statement stm = cnn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			
			while(rs.next()) {		
				
				cap.add(new Capacitacion(rs.getInt("idCap"),rs.getString("rut"),
						rs.getString("dia"),rs.getString("hora"),rs.getString("lugar"),
						rs.getString("duracion"),rs.getInt("cantAsistentes")));
			}
			
			
			
		} catch (SQLException e) {
			System.out.println("Error al consultar la BD");
			e.printStackTrace();
		}
		
		return cap;
	}

	@Override
	public Capacitacion read(int idCap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Capacitacion c) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int idCap) {
		// TODO Auto-generated method stub

	}

}
