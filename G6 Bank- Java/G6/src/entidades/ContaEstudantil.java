package entidades;

public class ContaEstudantil extends Contag6 {

	private double LimiteDisponivel = 5000.0;
	private char opcaoLetra;
	private
	Scanner leia = new Scanner(System.in);
	
	public ContEstudantil(int numero, String nomeCliente, int limiteDisponivel) {
		super(numero, nomeCliente);
		this.limiteDisponivel=limiteDisponivel;
	}
	
	public void menuEstudantil() {
		String menuEstudantil[] = {"Débito", "Crédito", "Saldo","Credito Estudantil", "Sair"};
		
		for(int x = 0; x<menuCorrente.length; x++) {
			System.out.print((x+1) + " - " + menuCorrente[x] + "\n");
		}
}
}

