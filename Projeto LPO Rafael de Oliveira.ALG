Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação orientada a objetos]
// Professor   : Aldo Henrique
// Descrição   : Projeto 1
// Autor(a)    : Rafael de Oliveira Araujo
// Data atual  : 14/04/2019

Var
   divisao_1: real
   opcao,num1,num2,cont,num,maior,menor,soma,cont1,g,numero,primo,soma_primo,soma1,num_morse,cont2,quant,sexo,soma2,idade,n,cont4,decimal,resultado,numdec,valor_n: inteiro
   media_idade,media_idade_sexo,media2, media: real
   binario: vetor [0..7] de inteiro
   result: caracter

Inicio
   enquanto opcao <>7 faca

      escreval("********************************************")
      escreval("")
      escreval("Escolha uma das opções:")
      escreval("1. Divisão")
      escreval("2. Faixa Etária")
      escreval("3. Números primos")
      escreval("4. Retornar o maior, menor e média")
      escreval("5. Código Morse")
      escreval("6. Mudança Base")
      escreval("7. Sair")
      escreval("")
      escreval("********************************************")
      escreval("")

      //Divisão
      //Usuário digita dois números e apresenta a divisão
      leia(opcao)
      se opcao=1 entao
         escreval("Informe dois números")
         escreval("Obs.: O divisor não pode ser igual a 0.")
         escreval("")
         escreval("Digite o primeiro número: ")
         leia(num1)
         escreval("Digite o segundo número: ")
         leia(num2)
         divisao_1 <-(num1/num2)
         escreval("A divisão dos números é= ",divisao_1)
      fimse
      escreval("")
      escreval("********************************************")
      escreval("")

      //Faixa etária
      //A pessoa entra com uma quantidade de pessoas. Depois peça para cada
      //pessoas a idade e sexo. Mostre a média da idade das pessoas e a média das
      //idades de cada sexo.

      se opcao=2 entao
         cont2 <-1
         media2 <-0
         soma2<-0
         escreval("Informe uma quantidade:")
         leia(quant)
         enquanto cont2<=quant faca
            escreval("Informe a idade das pessoas",cont2,":")
            leia(idade)
            se idade<=0 entao
               escreval("Idade inválida!")
            fimse
            escreval("Informe o sexo das pessoas. 'M' ou 'F'",cont2,":")
            leia(sexo)
            cont2 <-cont2+1
            media2 <- media2+idade
         fimenquanto
         media_idade <- media2/quant)
         escreval("Média das idades:",media_idade)
      fimse
      escreval("")
      escreval("********************************************")
      escreval("")


      //Números primos
      //Calcule a soma de todos os números primos existentes entre 1 e um número
      //informado pelo usuário
      se opcao=3 entao
         escreva("Informe um numero: ")
         leia(numero)
         cont1 <-1
         soma1 <-0
         para cont1 de 1 ate numero faca
            primo <-0
            para g de 1 ate cont1 faca
               se (cont1 mod g=0) entao
                  primo <-primo+1
               fimse
            fimpara
            se (primo=2) entao
               escreval(cont1)
               soma_primo <-soma_primo + cont1
            fimse
         fimpara
         escreval("A soma dos números primos até o número solicitado= ",soma_primo)
      fimse
      escreval("")
      escreval("********************************************")

      //Retornar o maior, menor e média
      //Usuário informa a quantidade de elementos que informará e depois mostre
      //o maior, o menor e a média de todos os números.

      se opcao=4 entao
         escreval("Informe um número: ")
         leia(num)
         cont <-0
         soma <-0
         para cont de 1 ate num faca
            soma <-soma+cont
         fimpara
         se (cont=0) entao
            maior <-num
            menor <-num
         senao
            se (num>maior) entao
               maior <-num
            senao
               se (num<menor) entao
                  menor <-num
               fimse
            fimse
         fimse
      fimse
      media <-soma/cont
      escreval("A soma dos valores até o número informado é: ",soma)
      escreval("O número maior é: ",maior)
      escreval("O número menor é: ",menor)
      escreval("A média dos valores é: ",media)
      escreval("")
      escreval("********************************************")

      //Código Morse
      //O usuário informa um número de 0 a 20 e é impresso na tela o valor em
      //código morse

      se opcao=5 entao
         escreval("Para mostrar na tela o código Morse.")
         escreval("Informe um número de 0 a 20")
         leia(num_morse)
         se(num_morse=0) entao
            escreva("_ _ _ _ _")
         senao
            se(num_morse=1) entao
               escreva("._ _ _ _")
            senao
               se(num_morse=2) entao
                  escreva(".._ _ _")
               senao
                  se(num_morse=3) entao
                     escreva("..._ _")
                  senao
                     se(num_morse=4) entao
                        escreva("...._")
                     senao
                        se(num_morse=5) entao
                           escreva(".....")
                        senao
                           se(num_morse=6) entao
                              escreva("_....")
                           senao
                              se(num_morse=7) entao
                                 escreva("_ _...")
                              senao
                                 se(num_morse=8) entao
                                    escreva("_ _ _..")
                                 senao
                                    se(num_morse=9) entao
                                       escreva("_ _ _ _.")
                                    senao
                                       se(num_morse=10) entao
                                          escreva("._ _ _ _ _ _ _ _ _")
                                       senao
                                          se(num_morse=11) entao
                                             escreva("._ _ _ _._ _ _ _")
                                          senao
                                             se(num_morse=12) entao
                                                escreva("._ _ _ _.._ _ _ ")
                                             senao
                                                se(num_morse=13) entao
                                                   escreva("._ _ _ _..._ _")
                                                senao
                                                   se(num_morse=14) entao
                                                      escreva("._ _ _ _...._")
                                                   senao
                                                      se(num_morse=15) entao
                                                         escreva("._ _ _ _.....")
                                                      senao
                                                         se(num_morse=16) entao
                                                            escreva("._ _ _ _ _....")
                                                         senao
                                                            se(num_morse=17) entao
                                                               escreva("._ _ _ _ _ _...")
                                                            senao
                                                               se(num_morse=18) entao
                                                                  escreva("._ _ _ _ _ _ _..")
                                                               senao
                                                                  se(num_morse=19) entao
                                                                     escreva("._ _ _ _ _ _ _ _.")
                                                                  senao
                                                                     se(num_morse=20) entao
                                                                        escreva(".._ _ _ _ _ _ _")
                                                                     senao
                                                                        escreval("Número digitado INVÁLIDO!")
                                                                     fimse
                                                                  fimse
                                                               fimse
                                                            fimse
                                                         fimse
                                                      fimse
                                                   fimse
                                                fimse
                                             fimse
                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      escreval("")
      escreval("********************************************")

      //Mudança de Base
      //A entrada pedirá a quantidade de número para o usuário. Receba
      //um inteiro N, indicando o número de casos que virão a seguir, um
      //por linha. Cada caso contém um valor X (X > 0) seguido de um texto
      //Y com um caractere, indicando se o valor X está no formato binário
      //ou decimal. Se o usuário informar um número binário, apresente
      //esse número decimal. Caso o usuário informe um número decimal
      //apresente o número binário

      se opcao=6 entao
         escreval("Informe os numeros binários, 1 por linha")
         para cont4 de 7 ate 0 passo -1 faca
         fimpara
         escreva("Informe o ",8-cont4," número: ")
         leia(binario[cont4])
         se binario[cont4]=1 entao
            resultado <-1
            para n de 1 ate cont4 faca
               resultado<-resultado*2
            fimpara
            decimal <-decimal+binario[cont4]*resultado
         fimse
      fimpara
      escreval("o número em Decimal:",decimal)
      escreval("")
      escreval ("Digite um valor Decimal: ")
      Leia (numdec)
      valor_n <-numdec
      enquanto (numdec > 0) faca
         escolha numdec mod 2
            result <-0
         caso 0
            result <-"0" + result
         caso 1
            result <-"1" + result
         fimescolha
         numdec <-numdec div 2
      fimenquanto
      escreval ("O número", valor_n, " em binário é igual a: ", result)
   fimse
   escreval("")
   escreval("********************************************")
fimenquanto
fimalgoritmo