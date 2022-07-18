package model.entity;

public class Cliente {
	
	private String telefono; 
	private String AFP; 
	private int SistSalud; 
	private String direccion; 
	private String comuna; 
	private int edad;
	public Cliente() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cliente(String telefono, String aFP, int sistSalud, String direccion, String comuna, int edad) {
		super();
		this.telefono = telefono;
		AFP = aFP;
		SistSalud = sistSalud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getAFP() {
		return AFP;
	}
	public void setAFP(String aFP) {
		AFP = aFP;
	}
	public int getSistSalud() {
		return SistSalud;
	}
	public void setSistSalud(int sistSalud) {
		SistSalud = sistSalud;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getComuna() {
		return comuna;
	}
	public void setComuna(String comuna) {
		this.comuna = comuna;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	@Override
	public String toString() {
		return "Cliente [telefono=" + telefono + ", AFP=" + AFP + ", SistSalud=" + SistSalud + ", direccion="
				+ direccion + ", comuna=" + comuna + ", edad=" + edad + "]";
	} 
	
	
	

}
