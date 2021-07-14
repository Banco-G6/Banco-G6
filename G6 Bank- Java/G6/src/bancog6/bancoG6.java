package bancog6;

import java.util.Scanner;

import entidades.Contag6;


public class bancoG6 {
public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		Contag6 conta1 = new Contag6 ();
		
		
		
		
		
		int numero= 1;
		//double saldo=0.00;
		char op;
		char continua;
		//char cd=' ';
		//double valor=0.00;
		
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
			
			if (op == '1') {
				System.out.println("Rodou conta Poupança");
				
			    for (int x=1; x<=10; x++) {
			    	System.out.println("Saldo atual R$ "+saldo);
			    	System.out.print("Digite o valor :");
			    	valor = leia.nextDouble();
			    	System.out.println("Débito ou Credito: ");
			    	
			    	
			    	
			    	
			    	/*cd = leia.next().charAt(0);
			    	if (cd=='d') {
			    		saldo = saldo - valor;
			    	}
			    	else {
			    		saldo = saldo + valor;
			    	}
			    	System.out.println("Continua S/N? ");
					continua = leia.next().toUpperCase() .charAt(0);
					if (continua =='N') {
						break;
					}
			    }
			    */
			    
				
			}
			else if (op=='2') {
				System.out.println("conta startup .....");
				System.out.println("Continua S/N? ");
				continua = leia.next().toUpperCase() .charAt(0);
				
			}
			else if(op=='3') {
				System.out.println("saindo....");
				
			}
			else {
				System.out.println("vc digitou uma tecla errada....");
				
			}
		} while (op!='3');
		
	

	}
}	

