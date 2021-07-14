package bancog6;

import java.util.Scanner;
import ContaEstudantil;


import entidades.ContaEspecial;
import ContaEstudantil;
public class BancoPrincipal {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int numero;
		String nome;
		char op;
		char cd = ' ';
		char continua;
		
		
		
		System.out.println("Digite o número da sua conta: ");
		numero = leia.nextInt();
		System.out.println("Digite o seu nome: ");
		nome = leia.next();
		ContaEspecial conta1 = new ContaEspecial(numero, nome, 1000);
		ContaEstudantil conta5= new ContaEstudantil(numero, nome, 5000);
		
		
		do {
			System.out.println("BANCO G6 - O BANCO A SUA ALTURA");
			System.out.println("O BANCO COM A SUA ESSÊNCIA");
			System.out.println("1 - Conta Poupança");
			System.out.println("2 - Conta Corrente");
			System.out.println("3 - Conta Especial");
			System.out.println("4 - Conta Empresa");
			System.out.println("5 - Conta Estudantil");
			System.out.println("6 - SAIR");
			System.out.print("Digite o numero da sua opção: ");
			op = leia.next().charAt(0);
			
			if(op == '1') {
				System.out.println("Conta Especial: ");
				
				for(int x = 1; x<=10;x++) {
					System.out.println("Contagem de movimentações : "+x);
					System.out.println("Saldo atual R$ "+conta1.getSaldo());
					System.out.println("Limite atual R$ "+conta1.getLimite());
					System.out.println("Débito ou Credito D/C: ");
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
						System.out.println("Opção inválida tente novamente.");
						}
					System.out.println("Continua S/N? ");
					continua = leia.next().toUpperCase() .charAt(0);
					if (continua =='N') {
						break;
						}
					}
			}
		}while (op!=1);
	}
}
