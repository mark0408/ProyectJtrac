package action;

import java.util.ArrayList;

import Mantenimiento.GestionSpaces;
import models.Estado;
import models.Listado;
import models.Metadata;
import models.Spaces;
import models.Tipo;

public class SpacesAction {
	
	private Spaces s;
	
	private ArrayList<Spaces>lstSpaces;
	private ArrayList<Spaces>cbSpaces;
	private ArrayList<Estado>lstEstado;
	private ArrayList<Tipo>lstTipo;
	private ArrayList<Metadata>lstMetadata;

	private ArrayList<Listado>lstReporte;
	
	public ArrayList<Listado> getLstReporte() {
		return lstReporte;
	}



	public void setLstReporte(ArrayList<Listado> lstReporte) {
		this.lstReporte = lstReporte;
	}

	private String estado, proyect, criterio;
	
	
	public String getEstado() {
		return estado;
	}



	public void setEstado(String estado) {
		this.estado = estado;
	}



	public String getProyect() {
		return proyect;
	}



	public void setProyect(String proyect) {
		this.proyect = proyect;
	}



	public String getCriterio() {
		return criterio;
	}



	public void setCriterio(String criterio) {
		this.criterio = criterio;
	}



	public ArrayList<Metadata> getLstMetadata() {
		return lstMetadata;
	}



	public void setLstMetadata(ArrayList<Metadata> lstMetadata) {
		this.lstMetadata = lstMetadata;
	}

	private int resultado=0;



	public int getResultado() {
		return resultado;
	}



	public void setResultado(int resultado) {
		this.resultado = resultado;
	}



	public ArrayList<Spaces> getCbSpaces() {
		return cbSpaces;
	}



	public void setCbSpaces(ArrayList<Spaces> cbSpaces) {
		this.cbSpaces = cbSpaces;
	}



	public ArrayList<Tipo> getLstTipo() {
		return lstTipo;
	}



	public void setLstTipo(ArrayList<Tipo> lstTipo) {
		this.lstTipo = lstTipo;
	}



	public ArrayList<Estado> getLstEstado() {
		return lstEstado;
	}



	public void setLstEstado(ArrayList<Estado> lstEstado) {
		this.lstEstado = lstEstado;
	}



	public String listarTodo() {
		GestionSpaces gs = new GestionSpaces();
		lstSpaces=gs.listadoSp();
		return "ok";
		
	}
	
	
	
	public String llenarCombo() {
		GestionSpaces gs = new GestionSpaces();
		lstEstado=gs.combo(resultado);
		System.out.println(lstEstado.get(0).toString());
		return "ok";
		
	}
	
	
	public String llenarTipo() {
		GestionSpaces gs = new GestionSpaces();
		System.out.println("llenarTipo"+resultado);
		lstTipo=gs.tipoxEtiqueta(resultado);
		System.out.println(lstTipo.get(0).toString());
		return "ok";
		
	}
	
	public String llenarspaces() {
		GestionSpaces gs = new GestionSpaces();
		cbSpaces=gs.comboSpaces();
		System.out.println(cbSpaces.get(0).toString());
		return "ok";
		
	}
	
	public String listarProyect() {
		estado = estado.substring(0, estado.length()-1);
		System.out.println(estado+"||"+proyect+"||"+criterio);
		GestionSpaces gs = new GestionSpaces();
		lstMetadata=gs.listProyect(estado, Integer.parseInt(proyect), criterio);
		System.out.println("Entro Metadata:"+ lstMetadata.get(0).toString());
		return "ok";
		
	}
	
	public String listarReporte2() {
		GestionSpaces gs = new GestionSpaces();
	 System.out.println("Proyect--->"+proyect+"Criterio--->"+criterio);
		lstReporte=gs.Reporte(Integer.parseInt(proyect), criterio);
	 System.out.println(lstReporte.size());
		return "ok";
	}
	
	
	public String CalcularValor() {
		
		System.out.println("Calcular Valor"+resultado);
		
		return "ok";
	}
	
	

	public Spaces getS() {
		return s;
	}

	public void setS(Spaces s) {
		this.s = s;
	}

	public ArrayList<Spaces> getLstSpaces() {
		return lstSpaces;
	}

	public void setLstSpaces(ArrayList<Spaces> lstSpaces) {
		this.lstSpaces = lstSpaces;
	}
	
	
	
	
	

}
