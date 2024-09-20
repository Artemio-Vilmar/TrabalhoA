programa
{
	inclua biblioteca Matematica --> mat	
	
	funcao inicio()
	{
		cadeia produto, lista
		real dolar, somaUS, valorConversao, valorReal
		lista = ""
		dolar = 0.0
		somaUS = 0.0
		escreva("digite o valor do dólar: ")
		leia(valorConversao)
		
		faca
		{
		escreva("Digite o produto: ")
		leia(produto)
			se(produto != "sair")
			{
			escreva("Digite o valor em U$: ")
			leia(dolar)
			valorReal = converteValor(dolar,valorConversao)
			escreva("Valor em Reais: R$ ",valorReal,"\n")
			somaUS = somaUS + dolar
				se(lista == "")
				{
				lista = lista + produto + ": US$ " + dolar
				}
				senao
				lista = lista + ", " + produto + ": US$ " + dolar
			}
		}
		enquanto (produto != "sair")
		limpa()
	escreva("Os produtos listados foram: ",lista,"\n")	
	escreva("\nO valor total é US$ ",mat.arredondar(somaUS, 2),"\n")
	escreva("\nO valor convertido é R$ ",conversao(somaUS, valorConversao),"\n")
	}

			funcao real conversao(real somaUS, real valorConversao)
			{retorne mat.arredondar(somaUS * valorConversao, 2)
			}

		funcao real converteValor(real dolar, real valorConversao)

		{
			retorne mat.arredondar(dolar*valorConversao, 2)
		}

			
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 461; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */