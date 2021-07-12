package entidades;

public class Contag6 {
	
	//atributos
	 private int numero;
	 private String nomeCliente;
	 private double saldo;
	 
	//construtor 
	public Contag6(int numero, String nomeCliente) {
		super();
		this.numero = numero;
		this.nomeCliente = nomeCliente;
	}
	
	//encapsulamento
	public int getNumero() {
		return numero;
	}

	//public void setNumero(int numero) {
		//this.numero = numero;
	//}

	public String getNomeCliente() {
		return nomeCliente;
	}

	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}

	public double getSaldo() {
		return saldo;
	}

	//public void setSaldo(double saldo) {
		//this.saldo = saldo;
	//}
	
	//metodos
	public void credito(double valorcred) {
		this.saldo += valorcred;
	}
	public void debito(double valordeb) {
		if(valordeb<=0) {
			System.out.println("Impossivel realizar operação!");
		}
		this.saldo -= valordeb;
	}
	 
}