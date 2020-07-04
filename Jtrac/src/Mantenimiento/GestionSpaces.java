package Mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.eclipse.jdt.internal.compiler.ast.TryStatement;

import Interfaces.SpacesInterfaces;
import models.Estado;
import models.Listado;
import models.Metadata;
import models.Spaces;
import models.Tipo;
import utils.SQLConexion;

public class GestionSpaces implements SpacesInterfaces {

	
	@Override
	public ArrayList<Spaces> listadoSp() {
	
		ArrayList<Spaces>lista = new ArrayList<Spaces>();
		Connection con = null;
		PreparedStatement pst = null;
	    ResultSet rs = null;
	    
	    try {
			
	    	con =SQLConexion.getConexion();
	    	String sql="select s.id,s.name,s.description from dbo.spaces s\r\n" + 
	    			"inner join dbo.user_space_roles us on s.id =us.space_id\r\n" + 
	    			"where us.user_id=1\r\n" + 
	    			"";
	    	pst=con.prepareStatement(sql);
	    	rs=pst.executeQuery();
	    	
	    	while(rs.next()) {
	    		Spaces s = new Spaces();
	    		s.setIdSpaces(rs.getInt(1));
	    		s.setNombre(rs.getString(2));
	    		s.setDescripcion(rs.getString(3));
	    		lista.add(s);
	    		
	    	}
	    	
	    	
		} catch (Exception e) {
			System.out.println("Error en listado de spaces"+e.getMessage());
		}finally {
			SQLConexion.closeConexion(con);
		}
		return lista;
		
		
		
	
	}

	@Override
	public ArrayList<Estado>combo(int proyect) {
		ArrayList<Estado>lista = new ArrayList<Estado>();
		Connection con = null;
		PreparedStatement pst = null;
	    ResultSet rs = null;
	   
	    try {
			
	    	con =SQLConexion.getConexion();
	    	
	    	String sql="{call sp_Estado(?)}";
	    	pst=con.prepareStatement(sql);
	    	pst.setInt(1,proyect);
	    	rs=pst.executeQuery();
	    	
	    	while(rs.next()) {
	    		Estado e = new Estado();
	    		e.setId(rs.getInt(1));
	    		e.setNombre(rs.getString(2));
	    		lista.add(e);
	    		
	    	}
	    	
	    	
		} catch (Exception e) {
			System.out.println("Error en listado de Estado"+e.getMessage());
		}finally {
			SQLConexion.closeConexion(con);
		}
	    System.out.println(lista.size());
		return lista;
	}

	@Override
	public ArrayList<Tipo> tipoxEtiqueta(int proyect) {
		ArrayList<Tipo>lista = new ArrayList<Tipo>();
		Connection con = null;
		PreparedStatement pst = null;
	    ResultSet rs = null;
	   
	    try {
			
	    	con =SQLConexion.getConexion();
	    	
	    	String sql="{call sp_tipo (?) }";
	    	pst=con.prepareStatement(sql);
	    	pst.setInt(1,proyect);
	    	rs=pst.executeQuery();
	    	
	    	while(rs.next()) {
	    		Tipo t = new Tipo();
	    		t.setTipo(rs.getString(1));;
	    		t.setEtiqueta(rs.getString(2));;
	    		lista.add(t);
	    		
	    	}
	    	
	    	
		} catch (Exception e) {
			System.out.println("Error en listado de Tipo"+e.getMessage());
		}finally {
			SQLConexion.closeConexion(con);
		}
	    System.out.println(lista.size());
		return lista;
	
	
	}

	@Override
	public ArrayList<Spaces> comboSpaces() {
		ArrayList<Spaces>lista = new ArrayList<Spaces>();
		Connection con = null;
		PreparedStatement pst = null;
	    ResultSet rs = null;
	    
	    try {
			
	    	con =SQLConexion.getConexion();
	    	String sql="select id, name from dbo.spaces order by name asc";
	    	pst=con.prepareStatement(sql);
	    	rs=pst.executeQuery();
	    	
	    	while(rs.next()) {
	    		Spaces s = new Spaces();
	    		s.setIdSpaces(rs.getInt(1));
	    		s.setNombre(rs.getString(2));
	    		lista.add(s);
	    		
	    	}
	    	
	    	
		} catch (Exception e) {
			System.out.println("Error en listado de spaces"+e.getMessage());
		}finally {
			SQLConexion.closeConexion(con);
		}
		return lista;
		
	}

	@Override
	public ArrayList<Metadata> listProyect(String estado, int proyect, String criterio) {

		ArrayList<Metadata>lista = new ArrayList<Metadata>();
		Connection con = null;
		PreparedStatement pst = null;
	    ResultSet rs = null;
	    
	    try {
			
	    	con =SQLConexion.getConexion();
	    	
	    	String sql="{call sp_flProyecto (?,?,?) }";
	  
	    	pst=con.prepareStatement(sql);
	    	pst.setString(1, estado);
	    	pst.setInt(2, proyect);
	    	pst.setString(3, criterio);
	    	rs=pst.executeQuery();
	    
	    	while(rs.next()) {
	    
	    		Metadata m = new Metadata();
	    		m.setEstado(rs.getString(1));
	    		m.setAsignado(rs.getString(2));
	    		m.setProyecto(rs.getString(3));
	    		m.setCriterio(rs.getString(4));
	    		lista.add(m);
	    	
	    		
	    	}
	    	
	    	
		} catch (Exception e) {
			System.out.println("Error en listado de lsitar Proyecto"+e.getMessage());
		}finally {
			SQLConexion.closeConexion(con);
		}
		return lista;
		
		
		
		
		
	}

	@Override
	public ArrayList<Listado> Reporte(int proyect, String criterio) {
		ArrayList<Listado>lista = new ArrayList<Listado>();
		Listado nombreColumna = new Listado(new ArrayList<String>());
		Connection con = null;
		PreparedStatement pst = null;
	    ResultSet rs = null;
	    
	    try {
			
	    	con =SQLConexion.getConexion();
	    	
	    	String sql="{call sp_Reporte2 (?,?) }";
	  
	    	pst=con.prepareStatement(sql);
	    	pst.setInt(1, proyect);
	    	pst.setString(2, criterio);
	    	rs=pst.executeQuery();
			System.out.println("antes de obtener nombre columnas");
			for(int x = 1;x<=rs.getMetaData().getColumnCount();x++){
				System.out.println("dentro for colum name");
				System.out.println("valor x: "+x+" valor tot: "+rs.getMetaData().getColumnCount() );
				String columna="";
				
				if(rs.getMetaData().getColumnName(x).equals(" ")) {
					columna="Sin Datos";
					
				}else
				columna = rs.getMetaData().getColumnName(x);
				System.out.println(columna);
				nombreColumna.getId().add(columna);
				System.out.println(nombreColumna.getId().get(0));
			}
			lista.add(nombreColumna);
			System.out.println(lista.size()+"-> tamanio");
	    	while(rs.next()) {
				Listado fila = new Listado(new ArrayList<String>());
				for(int x = 1;x<=rs.getMetaData().getColumnCount();x++){
					String campo = rs.getString(x);
					fila.getId().add(campo);
				}
	    		lista.add(fila);
	    	}
	    	
	    	
		} catch (Exception e) {
			System.out.println("Error en listado de lsitar Proyecto"+e.getMessage());
		}finally {
			SQLConexion.closeConexion(con);
		}
		System.out.println("El tamaño deberia ser 5: "+lista.size());
		return lista;
		
	}
	
	
	

	
	
	
	
	

}
