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
	cadeia bancog6[7] = {"Tipos de conta","Conta Poupança", "Conta Corrente", "Conta Especial", "Conta Empresa", "Conta Estudantil","Sair"}
	inteiro opcao
	inteiro diatual 
	caracter opletra
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
				contaEspecial()
				pare
				caso 4:
				contaEmpresa()
				pare
				caso 5:
				contaEstudantil()
				pare
				caso 6:
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
				Util.aguarde(1000)
				limpa()
				escreva("Antes de prosseguirmos, digite o dia em que sua conta foi criada...")
				leia(anivconta)
				
				se(anivconta == contapresente) {
					escreva("Parabéns! \n")
					escreva("Seu saldo foi aumentado em 0,05%! \n")
					saldo+= (saldo* 0.05)
					escreva("Seu novo saldo a partir de hoje é:" + saldo, "\n")
				}senao{
					escreva("Seu saldo infelizmente não foi premiado hoje \n")}
				
				
			para(inteiro x = 0; x <= 10; x++) {
				escreva("Digite uma opção : \n")
				escreva("\n1- Crédito \n2- Débito \n3- Saldo")
				leia(opcaoLetra)
                    se(opcaoLetra == '1'){
                    	limpa()
                    	escreva("Digite o valor do crédito : \n")
                    	leia(valor)
                    	se(valor > 0){
                    	credito = (saldo + valor)
                    	escreva("Seu saldo atual é de: ", credito, "\n")
                    	escreva("Deseja efetuar outra operação a Conta Poupança [ S / N ] ?")
                    	leia(opcaoLetra)
                    		se (opcaoLetra=='n' ou opcaoLetra == 'N'){
                    			limpa()
                    			escreva("Voltar ao menu [ S / N ]?")
                    			leia(opcaoLetra)
                    			}se(opcaoLetra == 'S' ou opcaoLetra == 's'){
                    				menu()
                    			}senao{
                    				limpa()
								escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
								Util.aguarde(3000)
								pare}
                    	}senao{
                         	escreva("Valor inválido")
                         }
                             
				
                    }se(opcao==2){
                    	limpa()
					escreva("Seu saldo atual é de : ", saldo, " reais.\n")
					escreva("\nDigite o valor do débito : \n")
					leia(valor)
					se(valor > saldo e valor >0 ){
							escreva("Não é possível debitar ", valor, " reais.")
                              	escreva("Seu saldo é de apenas ", saldo, " reais. ")
                              }
             		     senao{
                              	saldo= saldo - valor 
                              	escreva("Seu saldo atual é de ", saldo, " reais.")
                              	escreva("Deseja efetuar outra operação a Conta Poupança [ S / N ] ?")
                              	leia(opcaoLetra)
                            	  	}se (opcaoLetra == 'n' ou opcaoLetra == 'N'){
                            	  		limpa()
                              		escreva("Voltar ao menu [ S / N ]?")
                    				leia(opcaoLetra)
                              		}se(opcaoLetra == 'S' ou opcaoLetra == 's'){
                    					menu()
                              		}senao{
                              			limpa()
									escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
									Util.aguarde(3000)
									pare
									}
               	}se(opcao==3){
               		limpa()
               		escreva("Seu saldo atual é de ", saldo, " reais.")
               		Util.aguarde(1000)
               		escreva("Deseja realizar outra operação na Conta Poupança ?")
               		leia(opcaoLetra)
               		}se (opcaoLetra == 'n' ou opcaoLetra == 'N'){
               				limpa()
                    			escreva("Voltar ao menu [ S / N ]?")
               				leia(opcaoLetra)
                         		}se(opcaoLetra == 'S' ou opcaoLetra == 's'){
               					menu()
                         		}senao{
                         			limpa()
								escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
								Util.aguarde(3000)
								pare
								}
				
				
                    
			}
			limpa()
			escreva("Você chegou ao limite de movimentações da Conta Poupança.\n")
			Util.aguarde(2000)
			escreva("Voltar ao menu [ S / N ] ?\n")
			leia(opcaoLetra)
     		se(opcaoLetra == 'S' ou opcaoLetra == 's'){
				menu()
     		}senao{
     			limpa()
				escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
				Util.aguarde(3000)
				}
			
		}
		funcao contaCorrente(){
			inteiro quantidadeTalao=0
			escreva("Bem vinde a Conta Corrente G6\n")
			para(inteiro x=1; x<=10; x=x+1){
			escreva ("Digite uma opção : \n")
			escreva ("1 - Saldo\n2 - Débito\n3 - Crédito\n4 - Voltar ao Menu\n")
			leia(opcao)
			se (opcao == 1){
				limpa()
				escreva("Seu saldo é de : ", saldo, " reais. \n")
				escreva("Deseja fazer outra operação na Conta Corrente [S / N] ?\n")
				leia(opcaoLetra)
				se (opcaoLetra == 'n'ou opcaoLetra == 'N'){
					limpa()
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
				limpa()
				escreva ("Digite o valor do débito : \n")
				leia(valor)
				limpa()
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
								se (quantidadeTalao <3){
									escreva("Há talões de cheques disponivéis. Deseja fazer o uso [S / N] ? \n")
									escreva("A cada talão a conta será debitada em 30.00 reais.\n") 
									leia(opcaoLetra)
									se(opcaoLetra =='s' ou opcaoLetra == 'S'){
									   se (saldo<30){
											escreva("Você não tem saldo suficiente para essa operação.")
											Util.aguarde(2000)
											menu()
												}
										senao{
											saldo-=30.00
											quantidadeTalao++
											escreva("Parabéns pela escolha!\n")
											escreva("Seu saldo atual é de ", saldo, " reais.")
											Util.aguarde(2000)
											menu()}
									}senao{
										menu()
									}
								}senao {
									menu()
								}
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
				limpa()
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
								se(quantidadeTalao<3){
								escreva("Há talões de cheques disponivéis. Deseja fazer o uso [S / N] ? \n")
								escreva("A cada talão a conta será debitada em 30.00 reais\n") 
								leia(opcaoLetra)
									se(opcaoLetra=='S' ou opcaoLetra == 's'){
										se (saldo<30.00){
											limpa()
											escreva("Você não tem saldo suficiente para essa operação.")
											Util.aguarde(2000)
											menu()
	
												}
										senao{
											saldo-=30.00
											quantidadeTalao++
											escreva("Parabéns pela escolha!\n")
											escreva("Seu saldo atual é de ", saldo, " reais.")
										     Util.aguarde(2000)
										     menu()
								        	}
									
								    }senao{
								   	menu()	}
							}senao{
								menu()
									}
						}senao{
							limpa()
							escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
							Util.aguarde(3000)
							pare
						}
					} 
			
			se (opcao == 4){
				limpa()
				se(quantidadeTalao<3){
					escreva("Há talões de cheques disponivéis. Deseja fazer o uso [S / N] ? \n")
					escreva("A cada talão a conta será debitada em 30.00 reais\n") 
					leia(opcaoLetra)
						se(opcaoLetra=='S' ou opcaoLetra == 's'){
							se(saldo<30){
								limpa()
								escreva("Você não tem saldo suficiente para essa operação.")
								Util.aguarde(2000)
								menu()
							}senao{
								saldo-=30.00
								quantidadeTalao++
								escreva("Parabéns pela escolha!\n")
								escreva("Seu saldo atual é de ", saldo, " reais.")}
						
						}senao{
						   menu()
						}
				}	
			}
					
				
			se ((x==3 ou x==6 ou x==9) e quantidadeTalao<3){
				limpa()
				escreva("Há talões de cheques disponivéis. Deseja fazer o uso [S / N] ? \n")
				escreva("A cada talão a conta será debitada em 30.00 reais\n") 
				leia(opcaoLetra)
					se(opcaoLetra=='S' ou opcaoLetra == 's'){
						saldo-=30.00
						quantidadeTalao++
						escreva("Parabéns pela escolha!\n")
						escreva("Seu saldo atual é de ", saldo, " reais.\n")
					}senao{
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
									}
								}
							}
			}
			
			se(x==10){
				limpa()
				escreva("Você chegou ao limite de movimentações da Conta Corrente")
				Util.aguarde(2000)
				se(quantidadeTalao<3){
					escreva("Há talões de cheques disponivéis. Deseja fazer o uso [S / N] ? \n")
					escreva("A cada talão a conta será debitada em 30.00 reais\n") 
					leia(opcaoLetra) 
					}
					se(opcaoLetra=='S' ou opcaoLetra == 's'){
						saldo-=30.00
						quantidadeTalao++
						escreva("Parabéns pela escolha!\n")
						escreva("Seu saldo atual é de ", saldo, " reais.")
					}senao{
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						Util.aguarde(3000)
						}
					}
				}
			}
		}
		}
		funcao contaEspecial(){
			inteiro usarLimite = 0
			inteiro limite = 1000
			real variavelExtra = 0.00
			escreva("Bem vinde a Conta Corente G6\n")
			para(inteiro x=0; x<=9; x++){
			escreva ("Digite uma opção : \n")
			escreva ("1 - Saldo\n2 - Débito e Crédito\n3 - Voltar ao Menu\n")
			leia(opcao)
			se (opcao == 1){
				escreva("Seu saldo é de : ", saldo, " reais. \n")
				se(limite >=0){
				escreva("Seu saldo do Limite especial é: ", limite, " Reais.\n")
				}
				escreva("Deseja fazer outra operação na Conta Especial [S / N] ?", " ")
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
			senao se (opcao == 2){
				escreva("\nDeseja fazer Crédito ou Débito [C / D] ?", " ")
				leia(opcaoLetra)
				se(opcaoLetra == 'C' ou opcaoLetra=='c'){
				escreva ("\nDigite o valor do crédito : \n")
				leia(valor)
				saldo+=valor
				escreva("Saldo atualizado: " ,saldo, " Reais", "\n")
				}senao se(opcaoLetra== 'D' ou opcaoLetra== 'd'){
					escreva("\nQual do valor do Débito?", " : ")
					leia(valor)
				se(valor<=0){
					escreva("\nO valor digitado foi menor ou igual a zero, tente novamente")
				}senao se(valor > saldo+limite){
					escreva("Não é possível sacar ", valor, " reais, faça um crédito. \n")
				}senao se(saldo>=valor){
					saldo-=valor
				}senao se(saldo==0){
					saldo+=valor
					limite-=valor
					saldo-=valor
				}senao se(valor > saldo)
					variavelExtra = valor-saldo
					limite-=variavelExtra
					saldo=0.00
				}senao se(limite == 0)
					escreva("Seu Limite Especial está zerado, faça um crédito\n")
				senao{
					escreva("Opção inválida, tente novamente\n")
				}
					}	
						se (opcaoLetra == 'n'ou opcaoLetra == 'N'){
							escreva ("Seu saldo atual é: ", saldo, "Reais")
							escreva("Saldo do Limite Especial: ", limite)
							pare
					}
			
					se(x==9){
						escreva("Você chegou ao limite de movimentações da Conta Corrente")
						Util.aguarde(2000)
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						Util.aguarde(3000)
						menu()
						}
					senao se(opcao==3){
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						Util.aguarde(3000)
						menu()
					}
				}
		}
		funcao contaEmpresa(){
			inteiro emprestimo=0
			real limite=10.000
			para (inteiro i=1; i<=10; i++){
			escreva("Bem vinde a Conta Empresa G6")
			escreva("\nSeu saldo atual é de: "+saldo+" reais. \n")
			escreva("Digite uma opção : \n")
			escreva ("1 -Fazer um empréstimo\n2 - Voltar ao menu\n")
			leia(opcao)
			se (opcao == 1){
				escreva("Valor de empréstimo disponível: ", limite, "reais. \n  Deseja realizar um empréstimo [S / N] ?: \n")
				leia(opcaoLetra)
				se (opcaoLetra == 'S'ou opcaoLetra == 's'){
					escreva ("Digite o valor que deseja: ")
					leia(limite)
					se(limite>emprestimo e (limite > 0 e limite <= 10000)){
						emprestimo+=limite
						escreva ("Empréstimo concluído ! \nValor atual de saldo: " ,saldo+emprestimo, " em sua conta G6!\n")}
						se (emprestimo <10000){
							escreva("Deseja realizar outra operação na Conta Empresa [S / N] ? ")
							leia(opcao)
						 	}se(opcaoLetra =='n' ou opcaoLetra == 'N'){
						 		escreva("Voltar ao menu [ S / N ]?")
						 		leia(opcao)
						 		}se(opcaoLetra == 's' ou opcaoLetra == 'S'){
						 			menu()
						 		}senao{
						 			limpa()
									escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
									Util.aguarde(3000)
						 		}
				} senao {
					escreva("Deseja realizar outra operação na Conta Empresa [S / N] ? ")
					leia(opcao)
					}se(opcaoLetra =='n' ou opcaoLetra == 'N'){
						 escreva("Voltar ao menu [ S / N ]?")
						 leia(opcao)
						}se(opcaoLetra == 's' ou opcaoLetra == 'S'){
						 	menu()
						}senao{
						 	limpa()
							escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
							Util.aguarde(3000)
				}
			}
			se(opcao==2){
				limpa()
				menu()
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
		}
		funcao contaEstudantil(){
			inteiro valorCredito
			caracter s
			para ( inteiro c=1;c<=10; c++){
			
			escreva("Bem vinde a Conta Estudantil G6\n")
			escreva ("Seu saldo atual é de "+saldo+" reais \n")
					escreva ("Qual valor deseja: \n")
					leia(valor)
					escreva ("\n1- para debito 2- para crédito 3-Voltar Ao menu principal")
					leia(opcao)
					debito=(saldo-valor)
					credito=(saldo+valor)
					
					se (opcao == 1) {
                            
					
						se (valor>saldo){
						escreva("\nSaldo Insuficiente\n")
						escreva("Sabemos que a vida de estudante não é facil\n")
						escreva("\nPor isso pensando em você além de liberar um limite de credito estudantil")
						escreva("Credito estudantil de 5 mil reais\n")
						escreva("Deseja contratar o credito estudantil? [S  /  N]")
						leia (opcaoLetra) 

						   se (opcaoLetra == 'S'ou opcaoLetra == 's') {
					        escreva("\nSeu limite para credito estudantil é de 5 mil reais ")
		                       escreva("\nQual valor voce deseja contratar?")
	                            leia(valorCredito)  // ADICIONAR INTEIRO valorCredito


							escreva("\nSeu saldo agora é: "+valorCredito)

							escreva("Deseja realizar outra operação [S  /  N]")
							se (opcaoLetra == 'S'ou opcaoLetra == 'S')
							{
							} senao se (opcaoLetra == 'N' ou opcaoLetra == 'n') {
							escreva ("Voltar ao menu [S / N]? \n")
							leia (opcaoLetra)
							se (opcaoLetra == 'S' ou opcaoLetra == 's') {
							menu ()
	
							}  senao {
		
							escreva ("\t\t\t\t\tObrigado por usar o Banco G6! \n\n\n")
							Util.aguarde (3000)	escreva ("\t\t\t\t\tObrigado por usar o Banco G6! \n\n\n")
										Util.aguarde (3000)
										}
										}
										}
										}
					
									 senao se (opcaoLetra == 'N' ou opcaoLetra == 'n') {
					             	 	 escreva ("Voltar ao menu [S / N]? \n")
					             		  leia (opcaoLetra)
					              		  se (opcaoLetra == 'S' ou opcaoLetra == 's') {
					           		 menu()
							}
							senao se (valor<saldo) {
								escreva ("Seu saldo é de:", debito, " reais. \n")
							}	
								}
					} 			
					inteiro saldoCreditoEstudantil=0
					
				 	se (opcao == 2) { 
				 	
				 	escreva ("Seu saldo é de:", saldo, " reais. \n")
				 	saldo += valor
				 	
				 	}
				 	
			}
				 	}
				 	/*se (opcao == 3) {					
						escreva ("\t\t\t\t\tObrigado por usar o Banco G6! \n\n\n")
						Util.aguarde (3000)
					*/}			 		
					
		
		

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 15766; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */