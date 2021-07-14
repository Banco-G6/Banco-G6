package entidades;

public class ContaEspecial extends Contag6 {
	private double limite;
	private double newsaldo;
	char op;

	public ContaEspecial(int numero, String nomeCliente, int limite) {
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
		if(limite == 0) {
			System.out.println("Limite zerado");
		}
		else if(limite<0) {
			System.out.println("Valor solicitado maior que limite");
		}else {
			this.limite = this.limite - valor;
			super.credito(valor);
			System.out.println("Limite atual: "+limite);
		}
	}
	
}