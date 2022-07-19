package model.dao;

import java.util.List;

import model.entity.Capacitacion;

public interface ICapacitacionDao {

	public void create(Capacitacion c);
	public List<Capacitacion> read();
	public Capacitacion read(int idCap);
	public void update (Capacitacion c);
	public void delete(int idCap);
	
}
