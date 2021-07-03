programa
{	
	inclua biblioteca Util

	real saldo=0.00
	real valor 
	real anivconta
	real contapresente = 25.00 
	real newsaldo = 0.00
	real credito = 0.00
	real debito = 0.00
	cadeia bancog6[8] = {"Tipos de conta","Conta Poupança", "Conta Corrente", "Conta Especial", "Conta Empresa", "Conta Estudantil", "Extrato","Sair"}
	inteiro opcao
	inteiro diatual 
	caracter opletra
	
	
	funcao inicio()
	{
	
		
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		escreva("\t\t\t\tSejam bem vindes ao G6 Bank! \n")
		escreva("\t\t\t\tO Banco a sua altura \n")
		escreva("\t\t\t\tO Banco com a sua essência \n")
		escreva("\t\t\t\tSomos o G6, venha fazer parte!\n")
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		Util.aguarde(2000)
		
		
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

		funcao contaPoupanca(){
			para(saldo = 0; saldo <= 10; saldo++) {
				//escreva("Seu saldo atual é de R$: ", saldo, "\n")
				escreva("Antes de prosseguirmos, digite o dia em que sua conta foi criada...")
				leia(anivconta)
				
				se(anivconta == contapresente) {
				escreva("Parabéns! \n")
				escreva("Seu saldo foi aumentado em 0,05%! \n")
				escreva("Seu novo saldo a partir de hoje é:" + newsaldo, "\n")
				newsaldo =  saldo + (saldo* 0.05)

						escreva("Deseja algum valor?")
						leia(valor)
						escreva("\n1- Crédito ou 2- Débito")
						leia(opletra)
                              se(opletra == '1'){
                              	credito = (newsaldo + valor)
                              	escreva("Seu saldo atual é de: ", credito, "\n")
                              }
                              senao{
                              	debito = (newsaldo - valor)
                              	escreva("Seu saldo atual é de: ", debito, "\n")
                              	
                              }
				
				}
				senao{
					escreva("Seu Saldo infelizmente não foi premiado hoje \n")
				
						escreva("Deseja algum valor?")
						leia(valor)
						escreva("\n1- Crédito ou 2- Débito")
						leia(opletra)
                              se(opletra == '1'){
                              	credito = (saldo + valor)
                              	escreva("Seu saldo atual é de: ", credito, "\n")
                              }
                              senao{
                              	debito = (saldo - valor)
                              	escreva("Seu saldo atual é de: ", debito, "\n")
                              	
                              }
				}
		}
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
 * @POSICAO-CURSOR = 3316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */