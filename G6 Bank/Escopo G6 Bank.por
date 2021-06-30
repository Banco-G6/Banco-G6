programa
{
	
	funcao inicio()
	{
		cadeia bancog6[7] = {"Tipos de conta","Conta Poupança", "Conta Corrente", "Conta Especial", "Conta Empresa", "Conta Estudantil", "Sair"}
		inteiro tipoconta

		
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")
		escreva("\t\t\t\tSejam bem vindes ao G6 Bank! \n")
		escreva("\t\t\t\t°°°°°°°°°°°°°°°°°°°°°°°°°°°° \n")

		para(inteiro x=1; x<7; x++){
			escreva(x+" - " + bancog6[x] + "\n")
		}
		escreva("Digite qual seu tipo de conta: ")
		leia(tipoconta)
		limpa()
		
		escreva(bancog6[tipoconta])
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 541; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */