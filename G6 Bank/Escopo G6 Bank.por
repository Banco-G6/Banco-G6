programa
{	
	inclua biblioteca Util

	real saldo=0.00, valor = 0.00
	const inteiro ANIVERSARIOCONTA= 0
	cadeia bancoG6[7] = {"Tipos de conta","Conta Poupança", "Conta Corrente", "Conta Especial", "Conta Empresa", "Conta Estudantil","Sair"}
	inteiro opcao
	caracter opcaoLetra
	inteiro hoje
	
	funcao inicio()
	{
	
		
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		escreva("\t\t\t\tSejam bem vindes ao G6 Bank! \n")
		escreva("\t\t\t\tO Banco a sua altura \n")
		escreva("\t\t\t\tO Banco com a sua essência \n")
		escreva("\t\t\t\tSomos o G6, venha fazer parte!\n")
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		Util.aguarde(3000)
		
		limpa()
		menu()
			
		
		
	}
		funcao menu(){

			escreva("\tG6 Bank\n\n")

			para(inteiro x=1; x<7; x++){
			escreva(x+" - " + bancoG6[x] + "\n")
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
				contaEspecial()
				pare
				caso 4:
				contaEmpresa()
				pare
				caso 6:
				contaEstudantil()
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
		funcao contaPoupanca(){
			escreva("Bem vinde a Conta Poupança G6")
			
		}
		funcao contaCorrente(){
			escreva("Bem vinde a Conta Corente G6\n")
			para(inteiro x=0; x<10; x++){
			escreva ("Digite uma opção : \n")
			escreva ("1 - Saldo\n2 - Débito\n3 - Crédito\n4 - Voltar ao Menu\n")
			leia(opcao)
			se (opcao == 1){
				escreva("Seu saldo é de : ", saldo, " reais. \n")
				escreva("Deseja fazer outra operação na Conta Corrente [S / N] ?\n")
				leia(opcaoLetra)
				se (opcaoLetra == 'n'ou opcaoLetra == 'N'){
					escreva ("Voltar ao menu [S / N] ? \n")
					leia(opcaoLetra)
				     	se (opcaoLetra == 'S' ou opcaoLetra == 's'){
						menu()
						} senao {
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						Util.aguarde(3000)
						pare
						}
					}
				}
			se (opcao == 2){
				escreva ("Digite o valor do débito : \n")
				leia(valor)
				se(valor > saldo){
					escreva("Seu saldo é de apenas ", saldo, " reais.\n")
					escreva("Não é possível sacar ", valor, " reais. \n")	
				} senao se (valor == 0 e valor<0){
					escreva("Valor inválido. \n")
				} senao {
					saldo-=valor
					escreva("Seu saldo atual é de ", saldo, " reais. ")
					escreva("Deseja fazer outra operação na Conta Corrente [S / N] ?\n")
					leia(opcaoLetra)
						se (opcaoLetra == 'n'ou opcaoLetra == 'N'){
							escreva ("Voltar ao menu [S / N] ? \n")
							leia(opcaoLetra)
			     			se (opcaoLetra == 'S' ou opcaoLetra == 's'){
								menu()
							} senao {
								limpa()
								escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
								Util.aguarde(3000)
								pare
									}
								}
							}
			}
			se (opcao == 3){
				escreva ("Digite o valor do crédito : \n")
				leia(valor)
				se (valor >0){
					saldo+=valor 
					escreva("Seu saldo atual é ", saldo," reais. \n")
					escreva("Deseja fazer outra operação na Conta Corrente [S / N] ?\n")
					leia(opcaoLetra)
					se (opcaoLetra == 'n'ou opcaoLetra == 'N'){
					escreva ("Voltar ao menu [S / N] ? \n")
					leia(opcaoLetra)
				     	se (opcaoLetra == 'S' ou opcaoLetra == 's'){
						menu()
						} senao {
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						Util.aguarde(3000)
						pare
					}
				}
			se (opcao == 4){
				menu()
						}
					}
				}
			}
			escreva("Você chegou ao limite de movimentações da Conta Corrente")
			Util.aguarde(2000)
			limpa()
			escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
			Util.aguarde(3000)
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
 * @POSICAO-CURSOR = 645; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {x, 34, 16, 1}-{x, 79, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */