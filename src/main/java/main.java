import implementacion.ImplentarCapactiacion;
import model.entity.Capacitacion;

public class main {

	public static void main(String[] args) {
		

		ImplentarCapactiacion im=new ImplentarCapactiacion();
		Capacitacion cap=new Capacitacion();
		
		System.out.println(cap.getIdCap());
		
		im.llenarCapacitacion();
		System.out.println(im.MostrarCapacitaciones());
		System.out.println(im.MostrarCapacitaciones().get(0).getRut());
		
	}

}
