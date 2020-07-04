package models;

import java.util.ArrayList;

public class Listado {

	private ArrayList<String> id;

	public ArrayList<String> getId() {
		return id;
	}
	public void setId(ArrayList<String>id) {
		this.id = id;
	}
	public Listado(ArrayList<String> id) {
		this.id = id;
	}

	public Listado() {
	
	}
}