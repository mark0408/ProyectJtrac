package Interfaces;

import java.util.ArrayList;

import models.Estado;
import models.Listado;
import models.Metadata;
import models.Spaces;
import models.Tipo;

public interface SpacesInterfaces {

	public ArrayList<Spaces>listadoSp();
	
	public ArrayList<Estado>combo(int proyect);
	
	public ArrayList<Tipo>tipoxEtiqueta(int proyect);
	
	public ArrayList<Spaces>comboSpaces();
	
	public ArrayList<Metadata>listProyect(String estado, int proyect, String criterio);

	public ArrayList<Listado>Reporte(int proyect, String criterio);
	

	
}
