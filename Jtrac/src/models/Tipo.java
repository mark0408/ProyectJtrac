package models;

public class Tipo {

	private String tipo;
	private String etiqueta;
	
	
	
	
	@Override
	public String toString() {
		return "Tipo [tipo=" + tipo + ", etiqueta=" + etiqueta + "]";
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getEtiqueta() {
		return etiqueta;
	}
	public void setEtiqueta(String etiqueta) {
		this.etiqueta = etiqueta;
	}
	
	
	
	
}
