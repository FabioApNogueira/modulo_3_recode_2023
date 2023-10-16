package modelo;

public class Reserva {

	private int id;
	private float valor;
	private String data;

	public Reserva() {
		super();
	}

	public Reserva(float valor, String data) {
		super();
		this.valor = valor;
		this.data = data;
	}

	public Reserva(int id, float valor, String data) {
		super();
		this.id = id;
		this.valor = valor;
		this.data = data;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public float getValor() {
		return valor;
	}

	public void setValor(float valor) {
		this.valor = valor;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public void mostrar() {
		System.out.println("==========================================================");
		System.out.println("ID: "+this.id);
		System.out.println("Data: "+this.data);
		System.out.println("Valor: "+this.valor);
		System.out.println("==========================================================");
	}
}
