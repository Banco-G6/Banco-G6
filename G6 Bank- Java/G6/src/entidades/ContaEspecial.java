package entidades;

public class ContaEspecial extends Contag6 {
	private double limite;

	public ContaEspecial(int numero, String nomeCliente, double limite) {
		super(numero, nomeCliente);
		this.limite = limite;
	}

	public double getLimite() {
		return limite;
	}

	public void setLimite(double limite) {
		this.limite = limite;
	}
	
	public void usarLimite(double valor) {
		super.credito(valor);
		this.limite = limite - valor;
		
	}
	
}