package entidades;

import java.util.Scanner;

public class ContaEstudantil extends Contag6 {


<<<<<<< HEAD
    private double limiteEstudantil = 5000.0;
    private char opcaoLetra;
    private double valorEmprestimo;


    public double getValorEmprestimo() {
        return valorEmprestimo;
    }

    public void setValorEmprestimo(double valorEmprestimo) {
        this.valorEmprestimo = valorEmprestimo;
    }

    public char getOpcaoLetra() {
        return opcaoLetra;
    }

    public void setOpcaoLetra(char opcaoLetra) {
        this.opcaoLetra = opcaoLetra;
    }

    Scanner leia = new Scanner(System.in);

    public ContaEstudantil(int numero, String nomeCliente, double limiteEstudantil) {
        super(numero, nomeCliente);
        this.limiteEstudantil = limiteEstudantil;
    }

    public double getLimiteEstudantil() {
        return limiteEstudantil;
    }

//public void setLimiteEstudantil(double limiteEstudantil) {
        //this.limiteEstudantil = limiteEstudantil;
//    }
    public void usarLimiteEstudantil(double valor) {
        super.credito(valor);
        this.limiteEstudantil = limiteEstudantil - valor;

    }
    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public void menuEstudantil(double valorEmprestimo ) {

        String menuEstudantil[] = {"Débito", "Crédito", "Saldo","Credito Estudantil", "Sair"};

        for(int x = 0; x<menuEstudantil.length; x++) {
            System.out.print((x+1) + " - " + menuEstudantil[x] + "\n");
        }

        System.out.println("Sabemos que a vida de estudante pode não ser facil!/n");
        System.out.println("Por isso estamos liberando um credito de R$:"+limiteEstudantil);
=======
	private double limiteEstudantil = 5000.0;
	private char opcaoLetra;
	private double valorEmprestimo;

	
	public double getValorEmprestimo() {
		return valorEmprestimo;
	}

	public void setValorEmprestimo(double valorEmprestimo) {
		this.valorEmprestimo = valorEmprestimo;
	}

	public char getOpcaoLetra() {
		return opcaoLetra;
	}

	public void setOpcaoLetra(char opcaoLetra) {
		this.opcaoLetra = opcaoLetra;
	}

	Scanner leia = new Scanner(System.in);
	
	public ContaEstudantil(int numero, String nomeCliente, double limiteEstudantil) {
		super(numero, nomeCliente);
		this.limiteEstudantil = limiteEstudantil;
	}

	public double getLimiteEstudantil() {
		return limiteEstudantil;
	}

	//public void setLimiteEstudantil(double limiteEstudantil) {
		//this.limiteEstudantil = limiteEstudantil;
//	}
	public void usarLimiteEstudantil(double valor) {
		super.credito(valor);
		this.limiteEstudantil = limiteEstudantil - valor;
		
	}
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	
	public void menuEstudantil(double valorEmprestimo ) {
		
		String menuEstudantil[] = {"Débito", "Crédito", "Saldo","Credito Estudantil", "Sair"};
		
		for(int x = 0; x<menuEstudantil.length; x++) {
			System.out.print((x+1) + " - " + menuEstudantil[x] + "\n");
		}
	
		System.out.println("Sabemos que a vida de estudante pode não ser facil!/n");
		System.out.println("Por isso estamos liberando um credito de R$:"+limiteEstudantil);
>>>>>>> 5d49be295789a1ea24bc97db254ad07653a13722
        System.out.println("Gostaria de contratar o emprestimo? [S/N] ");
        opcaoLetra = leia.next().toUpperCase().charAt(0);

        if (valorEmprestimo == 's') {
            System.out.println("Qual valor você deseja?");
            valorEmprestimo= leia.nextDouble();
            if (valorEmprestimo <=0 && valorEmprestimo>limiteEstudantil) {
                System.out.println("Valor solicitado invalido!");
            }
             else {
            System.out.println("Saldo atual de:"+saldo);//FAZER OVERRIDE NESSE SALDO
        }
     }
<<<<<<< HEAD
            else {
                System.out.println("");

            }
    } 
=======
        	else {
        		System.out.println("");
	
        	}
	} 
>>>>>>> 5d49be295789a1ea24bc97db254ad07653a13722
}
