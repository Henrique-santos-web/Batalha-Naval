programa
{

	inclua biblioteca Util --> u
	
	funcao inicio(){
	caracter matriz[4][4]
        inteiro linha, coluna
        inteiro i, j
        inteiro numero

		
        escreva("===    BATALHA NAVAL    ===\n")
        escreva("===        MENU         ===\n")
        escreva("=== DIGITE 1 PARA JOGAR ===\n")
   	   escreva("=== DIGITE 2 VER REGRAS ===\n")
        escreva("=== DIGITE 0 PARA SAIR  ===\n")
        leia(numero) 

      
     
	escolha(numero){
		
        caso 1:

        faca{
        // Preencher matriz com água
        limpa()
        	para (i = 0; i < 4; i++)
        {
            para (j = 0; j < 4; j++)
            {
                matriz[i][j] = '~'
                escreva(matriz[i][j])
                escreva(" ")
                
            }
		escreva("\n")
        }
        escreva("Digite a linha do tiro (0 a 3): ")
        leia(linha)

        escreva("Digite a coluna do tiro (0 a 3): ")
        leia(coluna)

        // Verificar tiro

        se(linha == 2 e coluna == 1){
        	matriz[2][1] = 'X'
        }

        se(linha == 2 e coluna == 2){
        	matriz[2][2] = 'X'
        }
        se (matriz[linha][coluna] == 'X')
        {
            escreva("Acertou o navio!\n")
        }
        senao
        {
            escreva("Água! Você errou.\n")
        }

        se(matriz[2][1] == 'X' e matriz[2][2] == 'X'){
        	escreva("\nvoce ganhou\n")
        	escreva("todos os navios foram destruidos\n")
        	pare
        }
        u.aguarde(2000)
        
	}enquanto(numero != 0 ou matriz[2][1] == 'X' e matriz[2][2] == 'X')
	escreva("\nsaiu")
	
	pare

	caso 2:
	
		escreva("=== REGRAS ===")

	pare

	caso 0:

		escreva("saiu")
		pare

	caso contrario:
		escreva("erro")
		pare
	
	
	}
	
        
	}

	
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1768; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 7, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */