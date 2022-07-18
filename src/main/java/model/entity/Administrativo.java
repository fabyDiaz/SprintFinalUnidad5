package model.entity;

public class Administrativo {
	
	private String area; 
	private String Experiencia;
	
	public Administrativo(String area, String experiencia) {
		super();
		this.area = area;
		Experiencia = experiencia;
	}

	public Administrativo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getExperiencia() {
		return Experiencia;
	}

	public void setExperiencia(String experiencia) {
		Experiencia = experiencia;
	}

	@Override
	public String toString() {
		return "Administrativo [area=" + area + ", Experiencia=" + Experiencia + "]";
	} 
	
	

}
