package entidades;

public abstract class Contag6 {
	
	//atributos
	 private int numero;
	 private String nomeCliente;
	 protected double saldo;
	 //constructor
	public Contag6() {
		
		
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getNomeCliente() {
		return nomeCliente;
	}
	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}
	public double getSaldo() {
		return saldo;
	}
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	//metodos
	public void credito(double valorcred) {
		this.saldo += valorcred;
		System.out.println("Valor de saldo atualizado � : "+saldo);
	}
	public void debito(double valordeb) {
		if(valordeb >= 0) {
				System.out.println("N�o � poss�vel realizar o d�bito");	
			}
			else if(valordeb > saldo) {
				System.out.println("Valor de saldo indispon�vel, realize um cr�dito");
			}else {
				this.saldo -= valordeb;	
			}
		}
	}
