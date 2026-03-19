programa
{

	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
/////JOGO///////////	
	funcao inicio(){
		menu()		
	}
/////REGRAS/////////	
	funcao regras(){
		escreva("=== REGRAS ===")
		escreva("\n1.acerte todos os navios para ganhar\n")
		escreva("2.X marca os navios destruidos\n")
		escreva("3.voce tem 5 tiros\n\n")
	}
/////VOLTAR AO MENU/
	funcao voltar_menu(){
		limpa()			
       	menu()
		}
/////PLACAR////////
	funcao placar(){
		inteiro jogador = 10
		escreva("////PLACAR////\n")
		para(inteiro i = 1;i <= jogador;i++){
		escreva(i,".jogador: pontuação =\n")	
		}
	}
//////MENU E JOGO//
	funcao menu(){

	   caracter matriz[4][4]
        inteiro linha, coluna
        inteiro i, j
        inteiro numero
        inteiro sorteio_l,sorteio_c,sorteio_l2,sorteio_c2,sorteio_l3,sorteio_c3
        inteiro tiros = 5
       
	        sorteio_l = u.sorteia(0, 3)
		   sorteio_c = u.sorteia(0, 3)
		   sorteio_l2 = u.sorteia(0,3)
		   sorteio_c2 = u.sorteia(0, 3)
		   sorteio_l3 = u.sorteia(0, 3)
		   sorteio_c3 = u.sorteia(0, 3)
				
			   escreva("===    BATALHA NAVAL    ===\n")
		        escreva("===        MENU         ===\n")
		        escreva("=== DIGITE 1 PARA JOGAR ===\n")
		   	   escreva("=== DIGITE 2 VER REGRAS ===\n")
		   	   escreva("=== DIGITE 3 VER PLACAR ===\n")
		        escreva("=== DIGITE 0 PARA SAIR  ===\n")
		        leia(numero) 

	   //CRIAR MAPA
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
	        escreva("===    BATALHA NAVAL    ===\n")
	        escreva("para voltar ao menu digite 10\n")
	        
        para(i = 0; i < 4; i++){
			para(j = 0; j < 4; j++){
				escreva(matriz[i][j])
				escreva(" ")
			}
			escreva("\n")
			}
		
	se(tiros > 0){	
	   	escreva("voce tem ",tiros," tiros\n")
		escreva("Digite a linha do tiro (0 a 3): ")
       	leia(linha)
        
	se(linha == 10){
        	 voltar_menu()
        }
        
	se(linha > 3){
        	faca{
        		escreva("erro")
        		escreva("Digite a linha do tiro (0 a 3): ")
       		leia(linha)
        	}enquanto(linha > 3)
        }
        
        escreva("Digite a coluna do tiro (0 a 3): ")
        leia(coluna)
        
	se(linha == 10){
        	voltar_menu()
        }
        	
     se(coluna > 3){
     	faca{
			escreva("erro")		
       		escreva("Digite a coluna do tiro (0 a 3): ")
        		leia(coluna)
        	}enquanto(coluna > 3)
        }
        
        // Verificar tiro
     se(linha == sorteio_l  e coluna == sorteio_c){
        	matriz[sorteio_l][sorteio_c] = 'X'
        }

     se(linha == sorteio_l2 e coluna == sorteio_c2){
        	matriz[sorteio_l2][sorteio_c2] = 'X'
        }
	   
	se(linha == sorteio_l3 e coluna == sorteio_c3){
	   	matriz[sorteio_l3][sorteio_c3] = 'X'
	   }
        
     se (matriz[linha][coluna] == 'X')
        {
            escreva("Acertou o navio!\n")
            tiros = tiros - 1
        }
    senao
        {     	
        	  matriz[linha][coluna] = 'A'
            escreva("Água! Você errou.\n")
            tiros = tiros - 1
        }
        
	   }senao se(tiros == 0){
		escreva("voce perdeu")
	   	u.aguarde(2000)
	   	voltar_menu()
	   }

        se(matriz[sorteio_l][sorteio_c] == 'X' e matriz[sorteio_l2][sorteio_c2] == 'X' e matriz[sorteio_l3][sorteio_c3] == 'X'){
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
		
        
	}enquanto(numero != 0 ou matriz[sorteio_l][sorteio_c] == 'X' e matriz[sorteio_l2][sorteio_c2] == 'X' e matriz[sorteio_l3][sorteio_c3] == 'X')
		escreva("voltando ao menu")
		u.aguarde(1000)
		voltar_menu()
	pare
        

	caso 2:
		limpa()
		regras()	
			escreva("para voltar digite 0\n")
			leia(numero)
			
		se(numero == 0){
			voltar_menu()
		}
		senao
		{
			faca{
				limpa()
				regras()	
				escreva("para voltar digite 0\n")
				leia(numero)
		}enquanto(numero !=0)
		voltar_menu()
		}
	pare

	caso 3:
	placar()

	pare

	caso 0:
		escreva("saiu")
	pare
	
	caso contrario:
		escreva("erro\n")
		voltar_menu()
	pare
	}
    }
   }
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 33, 13, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */