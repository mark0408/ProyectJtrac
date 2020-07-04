package action;

import java.util.ArrayList;

import Mantenimiento.GestionReportes;
import models.Reporte3;

public class ReporteAction {

	private ArrayList<Reporte3>lstReporte3;
	private int jtrac;
	private String estado;
	
	
	
	public String listarReporte3() {
		System.out.println(jtrac+"||"+estado);
	     GestionReportes gs = new GestionReportes();
		lstReporte3=gs.reporte3(jtrac, estado);
		System.out.println("Entro Reporte3:"+ lstReporte3.get(0).toString());
		return "ok";
		
	}
	
	
	
	
	
	public ArrayList<Reporte3> getLstReporte3() {
		return lstReporte3;
	}
	public void setLstReporte3(ArrayList<Reporte3> lstReporte3) {
		this.lstReporte3 = lstReporte3;
	}
	public int getJtrac() {
		return jtrac;
	}
	public void setJtrac(int jtrac) {
		this.jtrac = jtrac;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
	
	
}
