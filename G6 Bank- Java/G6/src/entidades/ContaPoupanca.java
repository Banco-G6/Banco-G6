package entidades;

public class ContaPoupanca extends Contag6{
	private int dianiv;

	public ContaPoupanca(int numero, String nomeCliente, int dianiv) {
		super(numero, nomeCliente);
		this.dianiv = dianiv;
	}

	public int getDianiv() {
		return dianiv;
	}

	public void setDianiv(int dianiv) {
		this.dianiv = dianiv;
	}
	

}