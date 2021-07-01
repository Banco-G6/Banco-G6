programa
{	
	inclua biblioteca Util

	real saldo=0.00
	const inteiro ANIVCONTA= 0
	cadeia bancog6[8] = {"Tipos de conta","Conta Poupança", "Conta Corrente", "Conta Especial", "Conta Empresa", "Conta Estudantil", "Extrato","Sair"}
	inteiro opcao
	inteiro diatual 
	
	funcao inicio()
	{
	
		
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		escreva("\t\t\t\tSejam bem vindes ao G6 Bank! \n")
		escreva("\t\t\t\tO Banco a sua altura \n")
		escreva("\t\t\t\tO Banco com a sua essência \n")
		escreva("\t\t\t\tSomos o G6, venha fazer parte!\n")
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		Util.aguarde(2000)
		
		escreva("\nDigite o dia atual: ")
		leia(diatual)
		limpa()
		menu()
			
		
		
	}
		funcao menu(){

			escreva("\tG6 Bank\n\n")

			para(inteiro x=1; x<8; x++){
			escreva(x+" - " + bancog6[x] + "\n")
		}    
			escreva("Digite uma opção : \n")
			leia(opcao)

			

			escolha(opcao){
				caso 1:
				contaPoupanca()
				pare
				caso 2:
				contaCorente()
				pare
				caso 3:
				contaEmpresa()
				pare
				caso 4:
				contaEstudantil()
				pare
				caso 6:
				extrato()
				pare
				caso 7:
				limpa()
				escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
				Util.aguarde(3000)
				pare
				caso contrario:
				limpa()
				escreva("\t\t\t\t\tOpção inválida.\n\n\n")
				Util.aguarde(1000)
				menu()
					
			}
				limpa()
			
		}

		funcao extrato(){
			
		}
		funcao debito(){
			
		}
		funcao credito(){
			
		}

		funcao contaPoupanca(){
			escreva("Bem vinde a Conta Poupança G6")
			
		}

		funcao contaCorente(){
			
		}
		funcao contaEspecial(){
			
		}
		funcao contaEmpresa(){
			
		}
		funcao contaEstudantil(){
			
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 742; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */