programa
{	
	inclua biblioteca Util

<<<<<<< HEAD
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
	
=======
	real saldo=0.00, valor = 0.00
	const inteiro ANIVERSARIOCONTA= 0
	cadeia bancoG6[7] = {"Tipos de conta","Conta Poupança", "Conta Corrente", "Conta Especial", "Conta Empresa", "Conta Estudantil","Sair"}
	inteiro opcao
	caracter opcaoLetra
	inteiro hoje
>>>>>>> f6528863df6b9d1e11ae44a6339363a2580bbd79
	
	funcao inicio()
	{
	
		
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		escreva("\t\t\t\tSejam bem vindes ao G6 Bank! \n")
		escreva("\t\t\t\tO Banco a sua altura \n")
		escreva("\t\t\t\tO Banco com a sua essência \n")
		escreva("\t\t\t\tSomos o G6, venha fazer parte!\n")
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		Util.aguarde(3000)
		
<<<<<<< HEAD
		
=======
>>>>>>> f6528863df6b9d1e11ae44a6339363a2580bbd79
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
<<<<<<< HEAD

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
			
=======
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
>>>>>>> f6528863df6b9d1e11ae44a6339363a2580bbd79
		}
		funcao contaEspecial(){
			escreva("Bem vinde a Conta Especial G6")
		}
		funcao contaEmpresa(){
			inteiro emprestimo=0
			real limite=10.000
			para (inteiro i=1; i<=10; i++){
			escreva("Bem vinde a Conta Empresa G6")
			escreva("\nSeu saldo atual é de: "+saldo+" reais \n")
			escreva("Escolha uma opção\n")
			escreva ("1 -Fazer um empréstimo\n2 - Voltar ao menu\n")
			leia(opcao)
			se (opcao == 1){
				escreva("Valor de empréstimo disponível: R$10.000\n  Deseja realizar um empréstimo [S / N] ?: \n")
				leia(opcaoLetra)
				se (opcaoLetra == 'S'ou opcaoLetra == 's'){
					escreva ("Digite o valor que deseja: ")
					leia(limite)
				emprestimo+=limite
				se (limite > 0 e limite <= 10000){
					escreva ("Empréstimo concluído ! \nValor atual de saldo: " ,saldo+emprestimo, " em sua conta G6!\n")
					escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						 menu()
				} senao
					escreva ("Não é possivel retirar este valor\n")
				} senao se (opcaoLetra == 'N' ou opcaoLetra == 'n') {
						escreva ("Voltar ao menu [S / N] ?: \n")
					leia(opcaoLetra)
					se (opcaoLetra == 'S' ou opcaoLetra == 's'){
						 menu()
					} senao {
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
					}
				}
			}
		}
			escreva("Você chegou ao limite de movimentações da Conta Empresa")
	          Util.aguarde(2000)
	          escreva("Você gostaria de um empréstimo?: ")
	          leia(opcao)
	          se(opcao == 1){
	          	saldo=saldo+emprestimo
	          	escreva("Seu saldo atual é de: "+saldo)
	          }senao {
	          	limpa()
	          	escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
	          	Util.aguarde(3000)	
		}
		}funcao contaEstudantil(){
			escreva("Bem vinde a Conta Estudantil G6")
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
<<<<<<< HEAD
 * @POSICAO-CURSOR = 3316; 
=======
 * @POSICAO-CURSOR = 4493; 
>>>>>>> f6528863df6b9d1e11ae44a6339363a2580bbd79
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */