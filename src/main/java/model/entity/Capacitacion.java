package model.entity;

public class Capacitacion {
	
	private int idCap; 
	private String rut;
	private String dia; 
	private String hora; 
	private String lugar; 
	private String duracion; 
	private int cantAsistentes;
	
	public Capacitacion(int idCap, String rut, String dia, String hora, String lugar, String duracion,
			int cantAsistentes) {
		super();
		this.idCap = idCap;
		this.rut = rut;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
		this.cantAsistentes = cantAsistentes;
	}

	public Capacitacion() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getIdCap() {
		return idCap;
	}

	public void setIdCap(int idCap) {
		this.idCap = idCap;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut=rut;
	}
	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getLugar() {
		return lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}

	public int getCantAsistentes() {
		return cantAsistentes;
	}

	public void setCantAsistentes(int cantAsistentes) {
		this.cantAsistentes = cantAsistentes;
	}

	@Override
	public String toString() {
		return "Capacitacion [idCap=" + idCap + ", rut=" + rut + ", dia=" + dia + ", hora=" + hora + ", lugar=" + lugar
				+ ", duracion=" + duracion + ", cantAsistentes=" + cantAsistentes + "]";
	} 
	
	
	
	
	
}
