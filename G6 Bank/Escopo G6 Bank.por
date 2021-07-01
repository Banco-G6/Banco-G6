programa
{

	real saldo=0.00, debito=0.00, credito=0.00
	inteiro numconta
	const inteiro ANIVCONTA= 0
	
	funcao inicio()
	{
		cadeia bancog6[7] = {"Tipos de conta","Conta Poupança", "Conta Corrente", "Conta Especial", "Conta Empresa", "Conta Estudantil", "Sair"}
		inteiro tipoconta
		inteiro diatual 
	
		
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		escreva("\t\t\t\tSejam bem vindes ao G6 Bank! \n")
		escreva("\t\t\t\tO Banco a sua altura \n")
		escreva("\t\t\t\tO Banco com a sua essência \n")
		escreva("\t\t\t\tSomos o G6, venha fazer parte!\n")
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")

		para(inteiro x=1; x<7; x++){
			escreva(x+" - " + bancog6[x] + "\n")
		}
		escreva("Digite qual o numero da sua conta: ")
		leia(numconta)
		limpa()
		
		escreva(bancog6[tipoconta])


		escreva("\nDigite o dia atual: ")
		leia(diatual)	
		
		
	}
		funcao menu(){
			
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 801; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */