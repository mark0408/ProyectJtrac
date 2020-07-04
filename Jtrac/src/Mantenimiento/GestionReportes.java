package Mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Interfaces.ReporteInterfaces;

import models.Reporte3;
import utils.SQLConexion;

public class GestionReportes implements ReporteInterfaces{

	@Override
	public ArrayList<Reporte3> reporte3(int jtrac, String estado) {
		
		ArrayList<Reporte3>lista = new ArrayList<Reporte3>();
		Connection con = null;
		PreparedStatement pst = null;
	    ResultSet rs = null;
	    
	    try {
			
	    	con =SQLConexion.getConexion();
	    	
	    	String sql="{call sp_Reporte3 (?,?) }";
	  
	    	pst=con.prepareStatement(sql);
	    	pst.setInt(1, jtrac);
	    	pst.setString(2, estado);
	    	
	    	rs=pst.executeQuery();
	    
	    	while(rs.next()) {
	    
	    		Reporte3 r = new Reporte3();
	    		r.setJtrac(rs.getString(1));
	    		r.setCantidad(rs.getInt(2));
                r.setFecha(rs.getString(3));	    		
	    		
	    		lista.add(r);
	    	
	    		
	    	}
	    	
	    	
		} catch (Exception e) {
			System.out.println("Error en listado de Reporte 3"+e.getMessage());
		}finally {
			SQLConexion.closeConexion(con);
		}
		return lista;
		
		
		
	
	}

}
