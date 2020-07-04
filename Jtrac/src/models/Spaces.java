package models;

public class Spaces {

	private int idSpaces;
	private String nombre, descripcion;
	

	
	@Override
	public String toString() {
		return "Spaces [idSpaces=" + idSpaces + ", nombre=" + nombre + ", descripcion=" + descripcion + "]";
	}
	public int getIdSpaces() {
		return idSpaces;
	}
	public void setIdSpaces(int idSpaces) {
		this.idSpaces = idSpaces;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	
	
}
