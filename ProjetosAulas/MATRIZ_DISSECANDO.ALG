Algoritmo "matriz_dissecando"
// Programa para visualiza��o e disseca��o de uma matriz 4x4 com diversas op��es
// Autor: Tk Falabretti (Curso em V�deo)

Var

   n : vetor[1..4, 1..4] de inteiro
   i,j, opcao : inteiro

// Procedimento para mostrar o cabe�alho do programa
procedimento topo()
inicio
   escreval ("--------------------------")
   escreval ("| Visualizador de Matriz |")
   escreval ("--------------------------")
   escreval()
fimprocedimento

// Procedimento para exibir a matriz completa
procedimento exmatriz()
inicio
   para i <- 1 ate 4 faca
      para j <- 1 ate 4 faca
         escreva (n[i,j]:4)
      fimpara
      escreval ()
   fimpara
fimprocedimento

// Procedimento para exibir o menu de op��es
procedimento menu()
inicio
   escreval ()
   escreval ("==-----------------------==")
   escreval ("||    Menu de op��es:    ||")
   escreval ("==-----------------------==")
   escreval (" [1] Mostrar a Matriz")
   escreval (" [2] Diagonal Principal")
   escreval (" [3] Triangulo Superior")
   escreval (" [4] Triangulo Inferior")
   escreval (" [5] Sair")
   escreval ("--------------------------")
   escreva (" >>> OP��O: ")
fimprocedimento

// Procedimento para mostrar a diagonal principal da matriz
Procedimento dp()
inicio
   escreval (" [2] Diagonal Principal:")
   escreval()
   Para i <- 1 ate 4 faca
      escrevaL(n[i,i]:4) // Exibe apenas os elementos da diagonal principal
      Para j <- 1 ate i faca
         escreva("    ") // Separa��o visual
      FimPara
   FimPara
FimProcedimento

// Procedimento para mostrar o tri�ngulo superior da matriz
Procedimento tsup()
inicio
   escreval (" [3] Triangulo Superior")
   escreval ()
   Para i <- 1 ate 3 faca
      escreva("    ")
      Para j <- i+1 ate 4 faca
         escreva(n[i,j]:4) // Exibe os elementos do triangulo superior
      FimPara
      escreval()
      Para j <- 1 ate i faca
         escreva("    ")
      FimPara
   FimPara
   escreval()
FimProcedimento

// Procedimento para mostrar o tri�ngulo inferior da matriz
Procedimento tinf()
inicio
   escreval (" [4] Triangulo Inferior")
   escreval ()
   Para i <- 2 ate 4 faca
      escreval()
      Para j <- 1 ate i-1 faca
         escreva(n[i,j]:4) // Exibe os elementos do triangulo inferior
      FimPara
   FimPara
   Escreval()
FimProcedimento

// In�cio do programa principal
Inicio
   topo() // Chamada do cabe�alho inicial
   
   // Entrada de dados da matriz
   para i <- 1 ate 4 faca
      para j <- 1 ate 4 faca
         escreva ("Informe o valor [",i,",",j," ] = ")
         leia (n[i,j])
      fimpara
   fimpara
   
   // Estrutura de repeti��o para o menu at� que o usu�rio escolha sair
   enquanto (opcao <> 5) faca
      menu()
      leia (opcao)
      
      // Estrutura de sele��o de op��es
      Escolha opcao
      Caso 1
         limpatela
         topo()
         escreval (" [1] Matriz:")
         escreval()
         exmatriz()

      Caso 2
         limpatela()
         topo()
         dp()

      Caso 3
         limpatela()
         topo()
         tsup()

      Caso 4
         limpatela()
         topo()
         tinf()

      OutroCaso
         se (opcao <> 5) entao
            limpatela()
            topo()
            escreval ("Op��o Inv�lida")
         fimse

      FimEscolha
   fimenquanto

   // Encerramento do programa
   limpatela
   topo()
   escreval (" Programa encerrado. At� logo.")
   escreval (" Pressione a tecla ESC para sair...")
Fimalgoritmo
