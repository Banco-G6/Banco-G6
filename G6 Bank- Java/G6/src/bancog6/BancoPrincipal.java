package bancog6;

import java.util.Scanner;
import entidades.ContaEstudantil;
import entidades.ContaEspecial;
public class BancoPrincipal {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int numero;
		String nome;
		char op;
		char cd = ' ';
		char continua;
		
		
		
		System.out.println("Digite o n�mero da sua conta: ");
		numero = leia.nextInt();
		System.out.println("Digite o seu nome: ");
		nome = leia.next();
		ContaEspecial conta1 = new ContaEspecial(numero, nome, 1000);
		ContaEstudantil conta5= new ContaEstudantil(numero, nome, 5000);
		
		do {
			System.out.println("BANCO G6 - O BANCO A SUA ALTURA");
			System.out.println("O BANCO COM A SUA ESS�NCIA");
			System.out.println("1 - Conta Poupan�a");
			System.out.println("2 - Conta Corrente");
			System.out.println("3 - Conta Especial");
			System.out.println("4 - Conta Empresa");
			System.out.println("5 - Conta Estudantil");
			System.out.println("6 - SAIR");
			System.out.print("Digite o numero da sua op��o: ");
			op = leia.next().charAt(0);
			
			if(op == '1') {
				System.out.println("Conta Especial: ");
				
				for(int x = 1; x<=10;x++) {
					System.out.println("Contagem de movimenta��es : "+x);
					System.out.println("Saldo atual R$ "+conta1.getSaldo());
					System.out.println("Limite atual R$ "+conta1.getLimite());
					System.out.println("D�bito ou Credito D/C: ");
					cd = leia.next().toUpperCase() .charAt(0);
					if(cd =='D') {
						System.out.println("Digite o valor que deseja debitar: ");
						double valordeb = leia.nextInt();
						conta1.debito(valordeb);
						conta1.usarLimite(valordeb);
					}else if(cd =='C') {
						System.out.println("Digite o valor que deseja creditar: ");
						int valorcred = leia.nextInt();
						conta1.credito(valorcred);
					}else {
						System.out.println("Op��o inv�lida tente novamente.");
						}
					System.out.println("Continua S/N? ");
					continua = leia.next().toUpperCase() .charAt(0);
					if (continua =='N') {
						break;
						}
					}
			}if(op == '5') {
				
				System.out.println("Sabemos que a vida de estudante pode n�o ser facil!/n");
				System.out.println("Por isso estamos liberando um credito de R$:"+conta5.getLimiteEstudantil());
		        System.out.println("Gostaria de contratar o emprestimo? [S/N] ");
		       conta5.setOpcaoLetra(leia.next().toUpperCase().charAt(0));
		        
		        if (conta5. valorEmprestimo == 's') {
		        	System.out.println("Qual valor voc� deseja?");
		        	valorEmprestimo= leia.nextDouble();
		        	if ( valorEmprestimo <=0 && valorEmprestimo>limiteEstudantil) {
		        		System.out.println("Valor solicitado invalido!");
		        	}
		             else {
		        	System.out.println("Saldo atual de:"+saldo);//FAZER OVERRIDE NESSE SALDO
		        }
		     }
		        	else {
		        		System.out.println("");
			
		        	}
			}
		}while (op!=1);
		
		
			
			/*
			System.out.println("Sabemos que a vida de estudante pode n�o ser facil!/n");
			System.out.println("Por isso estamos liberando um credito de R$:"+conta5.getLimiteEstudantil());
	        System.out.println("Gostaria de contratar o emprestimo? [S/N] ");
	        conta5.setOpcaoLetra(leia.next().toUpperCase().charAt(0));
	        
	        if (conta5.valorEmprestimo == 's') {
	        	System.out.println("Qual valor voc� deseja?");
	        	valorEmprestimo= leia.nextDouble();
	        	if (valorEmprestimo <=0 && valorEmprestimo>limiteEstudantil) {
	        		System.out.println("Valor solicitado invalido!");
	        	}
	             else {
	        	System.out.println("Saldo atual de:"+saldo);//FAZER OVERRIDE NESSE SALDO
	        }
	     }
	        	else {
	        		System.out.println("");
		
	        	}
			*/
		
	}
}
