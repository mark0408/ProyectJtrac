package models;

public class Metadata {
	
	private int codigo;
	
	private String estado,asignado,proyecto,criterio;
	
	
	
	

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	

	@Override
	public String toString() {
		return "Metadata [codigo=" + codigo + ", estado=" + estado + ", asignado=" + asignado + ", proyecto=" + proyecto
				+ ", criterio=" + criterio + "]";
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getAsignado() {
		return asignado;
	}

	public void setAsignado(String asignado) {
		this.asignado = asignado;
	}

	public String getProyecto() {
		return proyecto;
	}

	public void setProyecto(String proyecto) {
		this.proyecto = proyecto;
	}

	public String getCriterio() {
		return criterio;
	}

	public void setCriterio(String criterio) {
		this.criterio = criterio;
	}
	
	
	
	

}
