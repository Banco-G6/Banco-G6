programa
{	
	inclua biblioteca Util

	real saldo=0.00
	real operacoes[10]
	const inteiro ANIVCONTA= 0
	cadeia bancog6[8] = {"Tipos de conta","Conta Poupança", "Conta Corrente", "Conta Especial", "Conta Empresa", "Conta Estudantil", "Extrato","Sair"}
	inteiro opcao
	caracter opLetra
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
				contaCorrente()
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

		funcao movimentacoes() {
			para(inteiro x = 0; x < 10; x++){
			operacoes[x] = 0.0
			}
		
		}

		funcao extrato(){
			para(inteiro x = 0; x < 10; x++){
				se (operacoes[x]<0){
					escreva ("Débito : ", operacoes[x]," reais. \n")
					saldo+=operacoes[x]
				} senao se(operacoes[x]>0){
					escreva("Crédito : ", operacoes[x]," reais. \n")
					saldo+=operacoes[x]
				}
			}	
		}
		funcao debito(){
			
		}
		funcao credito(){
			
		}

		funcao contaPoupanca(){
			escreva("Bem vinde a Conta Poupança G6")
			
		}
		funcao contaCorrente(){
			escreva("Bem vinde a Conta Corente G6\n")
			escreva ("Digite uma opção : \n")
			escreva ("1 - Saldo\n2 - Saque\n3 - Deposito\n4 - Voltar ao Menu\n")
			leia(opcao)
			se (opcao == 1){
				escreva("Seu saldo é de : ", saldo, " reais. \n")
				escreva("Deseja fazer outra operação na Conta Corrente [S / N] ?\n")
				leia(opLetra)
				se (opLetra == 'S'ou opLetra == 's'){
					contaCorrente()
				} senao se (opLetra == 'N' ou opLetra == 'n') {
					escreva ("Voltar ao menu [S / N] ? \n")
					leia(opLetra)
					se (opLetra == 'S' ou opLetra == 's'){
						 menu()
					} senao {
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						Util.aguarde(3000)
					}
				}
			}
			se (opcao == 2){
				escreva ("Digite o valor do saque : \n")
				leia(opcao)	
				}
			se (opcao == 3){
				}
			se (opcao == 4){
				menu()
				}
			
			
			
		}
		funcao contaEspecial(){
			escreva("Bem vinde a Conta Especial G6")
		}
		funcao contaEmpresa(){
			escreva("Bem vinde a Conta Empresa G6")
		}
		funcao contaEstudantil(){
			escreva("Bem vinde a Conta Estudantil G6")
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2744; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */