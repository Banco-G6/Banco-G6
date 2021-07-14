programa
{	
	inclua biblioteca Util
     
	real saldo=0.00
	real valor 
	real anivconta = 25.00
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
				escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
				escreva("\t\t\t\tObrigado por usar o G6 Bank!\n")
				escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
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
				escreva("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
				escreva("Bem vinde a Conta Poupança G6! \n")
				escreva("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
				Util.aguarde(1500)
				limpa()
				escreva("Digite o dia atual...\n")
				leia(diatual)
				escreva("Antes de prosseguirmos, digite o aniversário da sua conta... \n")
				leia(anivconta)
				
				se(anivconta == contapresente) {
					escreva("Parabéns! \n")
					escreva("Seu saldo foi aumentado em 0,05%! \n")
					saldo+= (saldo* 0.05)
					escreva("Seu novo saldo a partir de hoje é:" + saldo, " reais. \n")
				}senao{
					escreva("Seu saldo infelizmente não foi premiado hoje \n")}
				
				
			para(inteiro x = 0; x <= 10; x++) {
				escreva ("Sua contagem de movimentações são: ", x, "\n")
				escreva("Digite uma opção : \n")
				escreva("\n1- Crédito \n2- Débito \n3- Saldo \n")
				leia(opcao)
                    se(opcao == 1){
                    	limpa()
                    	escreva("Digite o valor do crédito : \n")
                    	leia(valor)
                    	se(valor > 0){
                    	saldo+=valor
                    	escreva("Seu saldo atual é de: ", saldo, "\n")
                    	escreva("Deseja efetuar outra operação a Conta Poupança [ S / N ] ? \n")
                    	leia(opcaoLetra)
                    	se (opcaoLetra=='n' ou opcaoLetra == 'N'){
                    		limpa()
                    		escreva("Voltar ao menu [ S / N ] ? \n")
                    		leia(opcaoLetra)
                    			se(opcaoLetra == 'S' ou opcaoLetra == 's'){
                    			menu()
                    		}	senao se (opcaoLetra == 'n' ou opcaoLetra == 'N'){
                   				limpa()
							escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
							Util.aguarde(3000)
							pare}
							}
                    	}senao{
                         	escreva("Valor inválido")
                         }
                             
				
                    }
                    se(opcao==2){
                    	limpa()
					escreva("Seu saldo atual é de : ", saldo, " reais.\n")
					escreva("\nDigite o valor do débito : \n")
					leia(valor)
					se(valor > saldo ou valor<0){
						escreva("Não é possível debitar ", valor, " reais.")
                         	escreva("Seu saldo é de apenas ", saldo, " reais. ")
                         	Util.aguarde(2000)
				     }senao se(saldo>valor)
				     {
	                    	saldo-= valor 
	                    	escreva("Seu saldo atual é de ", saldo, " reais.")
	                    	escreva("Deseja efetuar outra operação a Conta Poupança [ S / N ] ?")
	                    	leia(opcaoLetra)
	                  	  	} se (opcaoLetra == 'n' ou opcaoLetra == 'N'){
	                  	  		limpa()
	                    		escreva("Voltar ao menu [ S / N ]?")
	          				leia(opcaoLetra)
	                    		} se(opcaoLetra == 'S' ou opcaoLetra == 's'){
	          					menu()
	                    		}senao se (opcaoLetra == 'n' ou opcaoLetra == 'N'){
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
                         		se(opcaoLetra == 'S' ou opcaoLetra == 's'){
               					menu()
                         		}senao se (opcaoLetra == 'n' ou opcaoLetra == 'N'){
                         			limpa()
								escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
								Util.aguarde(3000)
								pare
								}
               		}
				
				
                    
			}
			limpa()
			escreva("Você chegou ao limite de movimentações da Conta Poupança.\n")
			Util.aguarde(2000)
			escreva("Voltar ao menu [ S / N ] ?\n")
			leia(opcaoLetra)
     		se(opcaoLetra == 'S' ou opcaoLetra == 's'){
				menu()
     		}senao se (opcaoLetra == 'n' ou opcaoLetra == 'N'){
     			limpa()
				escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
				Util.aguarde(3000)
				}
			
		}
		
		funcao contaCorrente(){
			limpa()
			inteiro quantidadeTalao=0
			escreva("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
			escreva("Bem vinde a Conta Corrente G6! \n")
			escreva("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
			Util.aguarde(1500)
			para(inteiro x=1; x<=10; x=x+1){
			limpa()
			escreva ("Digite uma opção : \n")
			escreva ("1 - Saldo\n2 - Débito\n3 - Crédito\n4 - Voltar ao Menu\n  \n")
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
				se(valor > saldo){
					escreva("Seu saldo é de apenas ", saldo, " reais.\n")
					escreva("Não é possível sacar ", valor, " reais. \n")	
				} senao se (valor == 0 ou valor<0){
					escreva("Valor inválido. \n")
					Util.aguarde(2000)
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
									limpa()
									escreva("Há ", 3-quantidadeTalao," talões de cheques disponivéis. Deseja fazer o uso [S / N] ? \n")
									escreva("A cada talão a conta será debitada em 30.00 reais.\n") 
									leia(opcaoLetra)
									se(opcaoLetra =='s' ou opcaoLetra == 'S'){
									   se (saldo<30){
									   		limpa()
											escreva("Você não tem saldo suficiente para essa operação.")
											Util.aguarde(2000)
											menu()
												}
										senao{
											escreva("Quantos cheques deseja ?")
											leia(opcao)
											se(saldo<(30.00*opcao)){
												limpa()
												escreva("Você não tem saldo suficiente para essa operação.")
												Util.aguarde(2000)
												limpa()
											} senao {
												saldo-=30.00*opcao
												quantidadeTalao+=opcao
												escreva("Parabéns pela escolha!\n")
												escreva("Seu saldo atual é de ", saldo, " reais.")
												Util.aguarde(2000)
												menu()}
										}
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
								escreva("Há ", 3-quantidadeTalao," talões de cheque disponivéis. Deseja fazer o uso [S / N] ? \n")
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
											escreva("Quantos cheques deseja ?")
											leia(opcao)
											se(saldo<(30.00*opcao)){
												escreva("Você não tem saldo suficiente para essa operação.")
												Util.aguarde(2000)
												limpa()
											} senao {
												saldo-=30.00*opcao
												quantidadeTalao+=opcao
												escreva("Parabéns pela escolha!\n")
												escreva("Seu saldo atual é de ", saldo, " reais.")
												Util.aguarde(2000)
												menu()}
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
				}senao{
					escreva("Valor inválido.")
					Util.aguarde(2000)
				}
			}
			se (opcao == 4){
				limpa()
				se(quantidadeTalao<3){
					escreva("Há ", 3-quantidadeTalao," talões de cheques disponivéis. Deseja fazer o uso [S / N] ? \n")
					escreva("A cada talão a conta será debitada em 30.00 reais\n") 
					leia(opcaoLetra)
						se(opcaoLetra=='S' ou opcaoLetra == 's'){
							se(saldo<30){
								limpa()
								escreva("Você não tem saldo suficiente para essa operação.")
								Util.aguarde(2000)
								menu()
							}senao{
								escreva("Quantos cheques deseja ?\n")
								leia(opcao)
								se(saldo<(30.00*opcao)){
									limpa()
									escreva("Você não tem saldo suficiente para essa operação.")
									Util.aguarde(2000)
									limpa()
								} senao {
									limpa()
									saldo-=30.00*opcao
									quantidadeTalao+=opcao
									escreva("Parabéns pela escolha!\n")
									escreva("Seu saldo atual é de ", saldo, " reais.")
									Util.aguarde(2000)
									menu()}
								        	}
						
						}senao{
						   menu()
						}
				}	
			}
			se(x==10){
				limpa()
				escreva("Você chegou ao limite de movimentações da Conta Corrente")
				Util.aguarde(2000)
				se(quantidadeTalao<3){
					escreva("Há ", 3-quantidadeTalao," disponivéis. Deseja fazer o uso [S / N] ? \n")
					escreva("A cada talão a conta será debitada em 30.00 reais\n") 
					leia(opcaoLetra) 
					}
					se(opcaoLetra=='S' ou opcaoLetra == 's'){
						se(saldo<30){
							limpa()
							escreva("Você não tem saldo suficiente para essa operação.")
							Util.aguarde(2000)
							menu()
						}senao{
							escreva("Quantos cheques deseja ?")
							leia(opcao)
							se(saldo<(30.00*opcao)){
								limpa()
								escreva("Você não tem saldo suficiente para essa operação.")
								Util.aguarde(2000)
								limpa()
							} senao {
								limpa()
								saldo-=30.00*opcao
								quantidadeTalao+=opcao
								escreva("Parabéns pela escolha!\n")
								escreva("Seu saldo atual é de ", saldo, " reais.")
								Util.aguarde(2000)
								menu()}
								        	}
					}senao{
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						Util.aguarde(3000)
						}
					}
				
			}
		
		}
		funcao contaEspecial(){
			limpa()
			inteiro usarLimite = 0
			inteiro limite = 1000
			real variavelExtra = 0.00
			escreva("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
			escreva("Bem vinde a Conta Especial G6 \n")
			escreva("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
			Util.aguarde(1500)
			limpa()
			
			para(inteiro x=0; x<=9; x++){
			escreva ("Sua contagem de movimentações são: ", x, "\n")
			escreva ("Digite uma opção : \n")
			escreva ("1 - Saldo\n2 - Débito e Crédito\n3 - Voltar ao Menu\n")
			leia(opcao)
			limpa()

			se (opcao == 1){
				escreva("Seu saldo é de : ", saldo, " reais. \n")
				se(limite >=0){
				escreva("Seu saldo do Limite especial é: ", limite, " Reais.\n")
				}
				escreva("Deseja fazer outra operação na Conta Especial [S / N] ?", " ")
				leia(opcaoLetra)
				limpa()
					 se(opcaoLetra == 'n'ou opcaoLetra == 'N'){
						escreva ("Voltar ao menu [S / N] ? \n")
						leia(opcaoLetra)
				     		se (opcaoLetra == 'S' ou opcaoLetra == 's'){
				     			menu()
						
					 }senao{
					limpa()
					escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
					Util.aguarde(3000)
					limpa()
					pare
					}
				}
		}
				senao se (opcao == 2){
				escreva("\nDeseja fazer Crédito ou Débito [C / D] ?", " ")
				leia(opcaoLetra)
				se(opcaoLetra == 'C' ou opcaoLetra=='c'){
				escreva ("\nDigite o valor do crédito : ", " ")
				leia(valor)
				saldo+=valor
				escreva("Saldo atualizado: " ,saldo, " Reais", "\n")
				}senao se(opcaoLetra== 'D' ou opcaoLetra== 'd'){
					escreva("\nQual do valor do Débito?", " : ")
					leia(valor)
					escreva("Saldo atualizado: " ,saldo, " Reais", "\n")
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
		funcao inteiro emprestimoEmpresa (inteiro emprestimo){
			inteiro limite=10000
			escreva("Valor de empréstimo disponível: ",limite," reais. \n  Deseja realizar um empréstimo [S / N] ?: \n")
			leia(opcaoLetra)
			se (opcaoLetra == 'S' ou opcaoLetra == 's'){
					se(saldo<limite){
						saldo+=emprestimo
					limite-=emprestimo
					retorne(saldo+emprestimo)
					}
				} 
				retorne 0
			}
		funcao contaEmpresa(){
			inteiro emprestimo=0
			inteiro limite=10000
			inteiro saldoTemp=0
			inteiro j =0
			para (inteiro i=1; i<=10; i++){
				j=0
			escreva("Bem vinde a Conta Empresa G6")
			escreva("\nSeu saldo atual é de: "+saldo+" reais. \n")
			escreva("Digite uma opção : \n")
			escreva ("1 -Fazer um empréstimo\n2 - Voltar ao menu\n")
			leia(opcao)
			se (opcao == 1){
				escreva ("Digite o valor que deseja: ")
					leia(emprestimo)
				se (emprestimo<=limite){
					saldoTemp= emprestimoEmpresa(emprestimo)
				escreva ("Empréstimo concluído ! \nValor atual de saldo: " ,saldo, " em sua conta G6!\n")
					}senao {
					escreva("Não é possivel retirar este valor \n")
					escreva("Gostaria de tentar um valor menor? [S / N]\n")
					leia(opcaoLetra)
					se (opcaoLetra== 'S' ou opcaoLetra== 's'){
						enquanto(emprestimo>limite e (opcaoLetra == 'S' ou opcaoLetra == 's')){
					se (j>=1){
						escreva("Gostaria de tentar um valor menor? [S/N]\n")
						leia(opcaoLetra)
						}
					se(opcaoLetra=='S' ou opcaoLetra=='s'){
						escreva("Digite o valor que deseja: \n")
						leia(emprestimo)
					}
						j++
					}
				} 
			}
		}
			se(opcao==2){
				limpa()
				menu()
				}
			se(i==10){
				escreva("Você chegou ao limite de movimentações da Conta Empresa \n")
	          Util.aguarde(2000)
	          	limpa()
	          	escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
	          	Util.aguarde(3000)	
	          	}
			}
		}
		funcao contaEstudantil(){
		inteiro valorCredito=0
		real limite=5000.0
		real limiteDisponivel=5000.0
		caracter s
		real saldoEstudante=0.0
		real valorEstudantil=0.0
		real respCredito=0.0
		real valorEmprestimo=0
		saldoEstudante+=valorEmprestimo
		para ( inteiro x=1;x<=10; x++){
			escreva ("Sua contagem de movimentações são: ", x, "\n")
			escreva("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
			escreva("Bem vinde a Conta Estudantil G6! \n")
			escreva("°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
			Util.aguarde(1500)
			limpa()
		
			escreva ("Seu saldo atual é de "+saldoEstudante+" reais \n")
			escreva ("\n1- para debito \n2- para crédito \n3- Emprestimo Estudantil\n4- Saldo\n5-Voltar ao menu\n")
			leia(opcao)
			
				se (opcao == 4) {					
				escreva ("\nNa proxima atualização JAVA está modalidade está disponivel")
				Util.aguarde (3000)
					}	

               	se (	opcao == 3) {	
				escreva("\nSabemos que a vida de estudante não é facil\n")
				escreva("\nPor isso pensando em você além de liberar um limite de credito estudantil")
				escreva("\nCredito estudantil de ",limiteDisponivel)
				escreva("\nDeseja contratar o credito estudantil? [S  /  N]")
				leia (opcaoLetra) 

			    		se (opcaoLetra == 'S'ou opcaoLetra == 's') {
					escreva("\nSeu limite para credito estudantil é de",limiteDisponivel)
		         		escreva("\nQual valor voce deseja contratar?")
	               	leia(valorEmprestimo) 
	               	// ADICIONAR INTEIRO valorCredito
	               	limiteDisponivel-=valorEmprestimo
	              			se (valor<=0){
                     		escreva("Valor inválido")}
	     		          
						se (valor<=5000){
							saldoEstudante+=valorEmprestimo
							
	              	     	escreva("\nSeu saldo agora é:\n "+valorEmprestimo)
						escreva("Seu limite é de\n "+limiteDisponivel)
					//	limiteDisponivel-=saldoEstudante
						escreva("\nDeseja realizar outra operação [S  /  N]")
						leia(opcaoLetra)
							se (opcaoLetra == 'S'ou opcaoLetra == 'S'){
							menu()}
							senao se (opcaoLetra == 'N' ou opcaoLetra == 'n') {
							escreva ("Voltar ao menu [S / N]? \n")
							leia (opcaoLetra)
								se (opcaoLetra == 'S' ou opcaoLetra == 's') {
								menu ()
								}  
								senao {		
								escreva ("\t\t\t\t\tObrigado por usar o Banco G6! \n\n\n")
								Util.aguarde (3000)	escreva ("\t\t\t\t\tObrigado por usar o Banco G6! \n\n\n")
								Util.aguarde (3000)
								}
							}
						}
			    		}			 
					se (valorEmprestimo>5000){
	              	     escreva("/nSeu limite é insuficiente!/n")	
					escreva("\nDeseja realizar outra operação [S  /  N]")
					leia(opcaoLetra)
						se (opcaoLetra == 'S'ou opcaoLetra == 'S'){
						menu()
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
						se (valorEmprestimo<=0){
                        		 escreva("Valor inválido")} 
					}
               	
               	} 
                         
				 senao se (opcaoLetra == 'N' ou opcaoLetra == 'n') {
				 escreva ("Voltar ao menu [S / N]? \n")
				 leia (opcaoLetra)
				 	se (opcaoLetra == 'S' ou opcaoLetra == 's') {
				 	menu()
					 }
					senao {
		
					escreva ("\t\t\t\t\tObrigado por usar o Banco G6! \n\n\n")
					Util.aguarde (3000)	escreva ("\t\t\t\t\tObrigado por usar o Banco G6! \n\n\n")
					Util.aguarde (3000)
					}
				}		
               	
               
		
		    	
				inteiro saldoCreditoEstudantil=0

				//debito
				se (opcao == 1) {
                    escreva ("Qual valor deseja: \n")
				leia(valor)

				se (valor<=0){
				escreva("Valor Inválido!")	
				}
				se (valor<=saldoEstudante)
				saldoEstudante-=valor
					se (valor>saldoEstudante){
					escreva("\nSaldo Insuficiente\n")
					escreva("\nTemos uma otima solução para voce")
					escreva("\nVolte ao menu e veja 'Credito Estudantil'\n")
					escreva ("\nVoltar ao menu [S / N] ? \n")
					leia(opcaoLetra)
				     	se (opcaoLetra == 'S' ou opcaoLetra == 's'){
						menu()
						} senao {
						limpa()
						escreva("\t\t\t\t\tObrigado por usar o G6 Bank!\n\n\n")
						Util.aguarde(3000)
						
						}
						}
					}//fazersaldotalvez
				 se (opcao == 2) { 
				 escreva ("Qual valor deseja: \n")
				 leia(valor)
					 se (valor<=0){
					 escreva("Valor Inválido!")	
					 }
					senao 
					saldoEstudante+=valor
				     escreva ("Seu saldo é de:", saldoEstudante, " reais. \n")
				     escreva("Deseja fazer outra operação na Conta Estudantil [S / N] ?\n")
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
						}
						}
				 }
				 	
                     se (opcao == 5){ 
                     menu()
					}	
			
		}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 21445; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */