package modelo.entidades;

import java.io.Serializable;

public class Multa implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	int idMulta;
	int idVehiculo;
	double valor;
	String anio;
	
	public Multa() {}

	public Multa(int idVehiculo, double valor, String anio) {
		super();
		this.idVehiculo = idVehiculo;
		this.valor = valor;
		this.anio = anio;
	}



	public Multa(int idMulta, int idVehiculo, double valor, String anio) {
		super();
		this.idMulta = idMulta;
		this.idVehiculo = idVehiculo;
		this.valor = valor;
		this.anio = anio;
	}



	public int getIdMulta() {
		return idMulta;
	}

	public void setIdMulta(int idMulta) {
		this.idMulta = idMulta;
	}

	public int getIdVehiculo() {
		return idVehiculo;
	}

	public void setIdVehiculo(int idVehiculo) {
		this.idVehiculo = idVehiculo;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getAnio() {
		return anio;
	}

	public void setAnio(String anio) {
		this.anio = anio;
	}
	
	
	
}
