
/* CLIQUE NO SINAL DE "+", À ESQUERDA, PARA EXIBIR A DESCRIÇÃO DO EXEMPLO
 *  
 * Copyright (C) 2014 - UNIVALI - Universidade do Vale do Itajaí
 * 
 * Este arquivo de código fonte é livre para utilização, cópia e/ou modificação
 * desde que este cabeçalho, contendo os direitos autorais e a descrição do programa, 
 * seja mantido.
 * 
 * Se tiver dificuldade em compreender este exemplo, acesse as vídeoaulas do Portugol 
 * Studio para auxiliá-lo:
 * 
 * https://www.youtube.com/watch?v=K02TnB3IGnQ&list=PLb9yvNDCid3jQAEbNoPHtPR0SWwmRSM-t
 * 
 * Descrição:
 
 * 	Este exemplo ilustra o uso de um laço de repetição do tipo "faca-enquanto" para
 * 	validar a entrada dos dados informados pelo usuário.
 * 
 * Autores:
 * 
 * 	Giordana Maria da Costa Valle
 * 	Carlos Alexandre Krueger
 * 	
 * Data: 01/06/2013
 */

programa
{
	//calcula o IMC até que o valor informado do peso seja peso=0
	//retorna o IMC para qualquer peso e altura, sendo peso diferente de 0 com a equação IMC=peso/altura²
	//informa quantos ficaram acima de 24.9
	//informa quantos ficaram menor ou = a 24.9
	
	inclua biblioteca Matematica --> mat	
	
	funcao inicio()
	{
		
		real peso, altura, imc
		inteiro contageMaior, contageMenor
		contageMaior = 0
		contageMenor = 0
		faca
		{
			
			escreva ("\ninforme o peso: ")
			leia (peso)
			se(peso != 0)
			{
			
				escreva ("\ninforme a altura: ")
				leia(altura)
				imc = calculaIMC(peso , altura)
				
				se(imc>24.9)
				{
					contageMaior = contageMaior++
					
				}
				se(imc<=24.9)
				{
					contageMenor = contageMenor++
					
				}
					
					escreva("\nO IMC é: ", mat.arredondar(imc,2),"\n")

			}
			senao

				escreva("\n IMC's CALCULADOS:\n\n")
			
		}
		enquanto (peso != 0 )

		
	escreva("",contageMaior," Ficaram acima do IMC 24.9\n")
	escreva("",contageMenor," Ficaram abaixo ou igual ao IMC 24.9\n")
	}
	
	
	
	funcao real calculaIMC(real peso, real altura)
	{

				//PODE SER ASSIM:
		//real resultadoIMC

		//resultadoIMC = peso/(altura*altura)
		//retorne resultadoIMC
				//******************** OU PODE SER SÓ RETORNE:
		//retorne peso/(altura*altura)
		retorne peso/mat.potencia(altura, 2)
	}


}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2140; 
 * @DOBRAMENTO-CODIGO = [1];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */