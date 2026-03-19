programa
{

	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	
	funcao inicio(){
	caracter matriz[4][4]
        inteiro linha, coluna
        inteiro i, j
        inteiro numero
        inteiro sorteio_l,sorteio_c

        sorteio_l = u.sorteia(0, 3)
	   sorteio_c = u.sorteia(0, 3)

		
        escreva("===    BATALHA NAVAL    ===\n")
        escreva("===        MENU         ===\n")
        escreva("=== DIGITE 1 PARA JOGAR ===\n")
   	   escreva("=== DIGITE 2 VER REGRAS ===\n")
        escreva("=== DIGITE 0 PARA SAIR  ===\n")
        leia(numero) 

           	para (i = 0; i < 4; i++)
        {
            para (j = 0; j < 4; j++)
            {
                matriz[i][j] = '~'         
            }
        }     
	escolha(numero){
		
        caso 1:
        faca{
        // Preencher matriz com água
        limpa()
        para(i = 0; i < 4; i++){
			para(j = 0; j < 4; j++){
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
	
        se(linha == sorteio_l  e coluna == sorteio_c){
        	matriz[sorteio_l][sorteio_c] = 'X'
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

        se(matriz[sorteio_l][sorteio_c] == 'X' e matriz[2][2] == 'X'){
        	para(i = 0; i < 4; i++){
			para(j = 0; j < 4; j++){
				escreva(matriz[i][j])
				escreva(" ")
			}
			escreva("\n")
			}
        	escreva("\nvoce ganhou\n")
        	escreva("todos os navios foram destruidos\n")
        	pare
        }
        u.aguarde(2000)
        
	}enquanto(numero != 0 ou matriz[sorteio_l][sorteio_c] == 'X' e matriz[2][2] == 'X')
	escreva("\nsaiu")
	
	pare

	caso 2:
	
		regras()

	pare

	caso 0:

		escreva("saiu")
		pare

	caso contrario:
		escreva("erro")
		pare
	
	
	}
	
        
	}

	funcao regras(){
		escreva("=== REGRAS ===")
		escreva("\n1.acerte todos os navios para ganhar\n")
		escreva("2.X marca os navios destruidos\n")
		escreva("3.voce tem 5 tiros\n")
		
		
	}

	funcao voltar_menu(){
		
	}

	
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 8, 10, 6}-{sorteio_l, 12, 16, 9}-{sorteio_c, 12, 26, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */