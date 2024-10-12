Algoritmo "matriz_dissecando"
// Programa para visualização e dissecação de uma matriz 4x4 com diversas opções
// Autor: Tk Falabretti (Curso em Vídeo)

Var

   n : vetor[1..4, 1..4] de inteiro
   i,j, opcao : inteiro

// Procedimento para mostrar o cabeçalho do programa
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

// Procedimento para exibir o menu de opções
procedimento menu()
inicio
   escreval ()
   escreval ("==-----------------------==")
   escreval ("||    Menu de opções:    ||")
   escreval ("==-----------------------==")
   escreval (" [1] Mostrar a Matriz")
   escreval (" [2] Diagonal Principal")
   escreval (" [3] Triangulo Superior")
   escreval (" [4] Triangulo Inferior")
   escreval (" [5] Sair")
   escreval ("--------------------------")
   escreva (" >>> OPÇÃO: ")
fimprocedimento

// Procedimento para mostrar a diagonal principal da matriz
Procedimento dp()
inicio
   escreval (" [2] Diagonal Principal:")
   escreval()
   Para i <- 1 ate 4 faca
      escrevaL(n[i,i]:4) // Exibe apenas os elementos da diagonal principal
      Para j <- 1 ate i faca
         escreva("    ") // Separação visual
      FimPara
   FimPara
FimProcedimento

// Procedimento para mostrar o triângulo superior da matriz
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

// Procedimento para mostrar o triângulo inferior da matriz
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

// Início do programa principal
Inicio
   topo() // Chamada do cabeçalho inicial
   
   // Entrada de dados da matriz
   para i <- 1 ate 4 faca
      para j <- 1 ate 4 faca
         escreva ("Informe o valor [",i,",",j," ] = ")
         leia (n[i,j])
      fimpara
   fimpara
   
   // Estrutura de repetição para o menu até que o usuário escolha sair
   enquanto (opcao <> 5) faca
      menu()
      leia (opcao)
      
      // Estrutura de seleção de opções
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
            escreval ("Opção Inválida")
         fimse

      FimEscolha
   fimenquanto

   // Encerramento do programa
   limpatela
   topo()
   escreval (" Programa encerrado. Até logo.")
   escreval (" Pressione a tecla ESC para sair...")
Fimalgoritmo
