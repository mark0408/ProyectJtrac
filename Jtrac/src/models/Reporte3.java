package models;

public class Reporte3 {

	private String jtrac,fecha;
	private int cantidad;
	

	
	@Override
	public String toString() {
		return "Reporte3 [jtrac=" + jtrac + ", fecha=" + fecha + ", cantidad=" + cantidad + "]";
	}
	public String getJtrac() {
		return jtrac;
	}
	public void setJtrac(String jtrac) {
		this.jtrac = jtrac;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	
	
	
	
	
}
