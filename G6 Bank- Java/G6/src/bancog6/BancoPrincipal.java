package bancog6;

import java.util.Random;
import java.util.Scanner;
<<<<<<< HEAD

import entidades.ContaCorrente;
import entidades.ContaEspecial;
import entidades.ContaPoupanca;

=======
import entidades.ContaEstudantil;
import entidades.ContaEspecial;
>>>>>>> 5d49be295789a1ea24bc97db254ad07653a13722
public class BancoPrincipal {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		Random random = new Random();
		int numero;
		String nome;
		char op;
		char cd = ' ';
		char continua;
		System.out.print("같같같같같같같같같같같같같같같 \n");
		System.out.print("Sejam bem vindes ao G6 Bank! \n");
		System.out.print("O Banco a sua altura \n");
		System.out.print("O Banco com a sua ess�ncia \n");
		System.out.print("Somos o G6, venha fazer parte!\n");
		System.out.print("같같같같같같같같같같같같같같같 \n");
		numero = random.nextInt(99999);
		System.out.println("Gerando o n�mero da sua conta...");
		System.out.println("Digite o seu nome: ");
<<<<<<< HEAD
		nome = leia.next().toUpperCase();
		ContaCorrente conta2 = new ContaCorrente(numero, nome,3);
		ContaEspecial conta3 = new ContaEspecial(numero, nome, 1000);
		ContaPoupanca conta1 = new ContaPoupanca(numero, nome, 25);
		System.out.println("\n");
		System.out.print("\r\n");
=======
		nome = leia.next();
		ContaEspecial conta1 = new ContaEspecial(numero, nome, 1000);
		ContaEstudantil conta5= new ContaEstudantil(numero, nome, 5000);
		
>>>>>>> 5d49be295789a1ea24bc97db254ad07653a13722
		do {
			System.out.printf("-----------------------------------\n");
			System.out.println("Cliente: "+nome+" Conta: "+numero);
			System.out.println("1 - Conta Poupan�a");
			System.out.println("2 - Conta Corrente");
			System.out.println("3 - Conta Especial");
			System.out.println("4 - Conta Empresa");
			System.out.println("5 - Conta Estudantil");
			System.out.println("6 - SAIR");
			System.out.printf("-----------------------------------\n");
			System.out.print("Digite o numero da sua op豫o: ");
			op = leia.next().charAt(0);
			
			if(op == '1') {
			System.out.print("\n");
			System.out.println("Que dia � hoje? ");
			int dianiv = leia.nextInt();
			conta1.credito(dianiv);
			for(int x = 1; x<=10;x++) {
				System.out.print("\n");
				System.out.print("같같같같같같같같같같같같같같같� \n");
				System.out.print("Bem vinde a Conta Poupanca G6 \n");
				System.out.print("같같같같같같같같같같같같같같같� \n");
				System.out.println("Contagem de movimenta寤es : "+x);
				System.out.println("D�bito ou Credito [D / C]: ");
				cd = leia.next().toUpperCase() .charAt(0);
				if(cd =='D') {
					System.out.println("Digite o valor que deseja debitar: ");
					double valordeb = leia.nextInt();
					conta1.debito(valordeb);
				}else if(cd =='C') {
					System.out.println("Digite o valor que deseja creditar: ");
					int valorcred = leia.nextInt();
					conta1.credito(valorcred);
				}else {
					System.out.println("Op豫o inv�lida tente novamente.");
					}
				System.out.println("Continua [S / N] ? ");
				continua = leia.next().toUpperCase() .charAt(0);
				if (continua =='N') {
					break;
					}
				}
			}
				
			
			if(op == '2') {
				System.out.println("Conta Corrente");
				
				 for (int i=0; i<10;i++) {
					String menuCorrente[] = {"D�bito", "Cr�dito", "Saldo","Cheques", "Votar ao Menu", "Sair"};
					
					for(int x = 0; x<menuCorrente.length; x++) {
						System.out.print((x+1) + " - " + menuCorrente[x] + "\n");
				}
					System.out.println("Digite uma op豫o : ");
					op = leia.next().charAt(0);
					if (op=='1') {
						System.out.println("Digite o valor do d�bito : ");
						conta2.debito(leia.nextDouble());
					}
					if (op =='2') {
						System.out.println("Digite o valor do cr�dito : ");
						conta2.credito(leia.nextDouble());
					}
					if (op =='3') {
						System.out.println("Valor de saldo � : "+ conta2.getSaldo());
					}
					if (op == '4') {
						
						conta2.pedirCheque(2);
					}
					if (op == '5') {
						if (conta2.chequesDisponiveis<3) {
							conta2.pedirCheque(1);
						}
					if (op =='6') {
						if (conta2.chequesDisponiveis<3) {
							conta2.pedirCheque(1);
							break;
						}
						else {
							break ;
						}
					}
					}
				 }
			}
			
			if(op == '3') {
				System.out.print("\n");
				for(int x = 1; x<=10;x++) {
					System.out.print("\n");
					System.out.print("같같같같같같같같같같같같같같같� \n");
					System.out.print("Bem vinde a Conta Especial G6 \n");
					System.out.print("같같같같같같같같같같같같같같같� \n");
					System.out.println("Contagem de movimenta寤es : "+x);
					conta3.mostraSaldo();
					System.out.println("D�bito ou Credito [D / C]: ");
					conta3.mostraSaldo();
					cd = leia.next().toUpperCase() .charAt(0);
					if(cd =='D') {
						System.out.println("Digite o valor que deseja debitar: ");
						double valordeb = leia.nextInt();
						conta3.debito(valordeb);
					}else if(cd =='C') {
						System.out.println("Digite o valor que deseja creditar: ");
						int valorcred = leia.nextInt();
						conta3.credito(valorcred);
					}else {
						System.out.println("Op豫o inv�lida tente novamente.");
						}
					System.out.println("Continua [S / N] ? ");
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
<<<<<<< HEAD
			}while (op!=6);
=======
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
		
>>>>>>> 5d49be295789a1ea24bc97db254ad07653a13722
	}
}
		