#UNIDADE 3#

> nome <- "Jonathan Sartori Bruzarrosco"
> seg <- 5
> ter <- 4
> qua <- 1
> qui <- 6
> sex <- 2
> diasemana <- c(5,4,1,6,2)
> diasemana[2]
[1] 4
> is.vector(diasemana)
[1] TRUE
> is.vector(seg)
[1] TRUE
> nomesemana <- c("DOMINGO", "SEGUNDA", "TERÇA", "QUARTA", "QUINTA", "SEXTA", "SABADO")
> diasemana <- c(1,2,3,4,5,6,7)
> names(diasemana) <- nomesemana
> diasemana
DOMINGO SEGUNDA   TERÇA  QUARTA  QUINTA 
      1       2       3       4       5 
  SEXTA  SABADO 
      6       7 
> ##OU SEJA ACIMA A JUNÇÃO DE DOIS ELEMENTOS##
> 
> nomes <- c("Jonathan", "Danielle")
> nomes
[1] "Jonathan" "Danielle"
> 
> ##ACRESCENTAR ELEMENTO##
> nomes[length(nomes)+1] <- "Natasha"
> nomes
[1] "Jonathan" "Danielle" "Natasha" 
> nomes[length(nomes)+1] <- "Raissa"
> nomes
[1] "Jonathan" "Danielle" "Natasha" 
[4] "Raissa"  
> nomes
[1] "Jonathan" "Danielle" "Natasha"  "Raissa"  
> 
> ##REMOVER VALOR##
> 
> nomes <- nomes[-4]
> nomes
[1] "Jonathan" "Danielle" "Natasha" 
> 
> for(nome in nomes){}
> for(nome in nomes){
+     print(paste("onome é: ", nome))
+ }
[1] "onome é:  Jonathan"
[1] "onome é:  Danielle"
[1] "onome é:  Natasha"
> 
> for(nome in nomes){
+     print(paste("o nome é: ", nome))
+ }
[1] "o nome é:  Jonathan"
[1] "o nome é:  Danielle"
[1] "o nome é:  Natasha"

> ##CRIAR FUNÇOES##
> 
> 2+4
[1] 6
> 
> soma <- function(v1, v2){
+     resul <- v1 + v2
+     return(resul)
+ }
> View(soma)
> View(soma)
> soma(2,4)
[1] 6
> soma(2,89)
[1] 91
> 
> ##POSSO ALTERAR A FUNCAO##
> 
> func_generic <- function(v1, v2, op){
+     if(op=="+"){
+         resul <- v1 + v2
+     }
+     if(op=="-"){
+         resul <- v1 - v2
+     }
+     return(resul)
+ }
> func_generic(4,3,"+")
[1] 7
> func_generic(4,3,"-")
[1] 1

> maior <- function(lista){}
> maior <- function(lista){
+     maior<-0
+     print(paste("valor maior: " , maior))
+     for(val in lista){
+         print(paste("valor da variavel val: ", val))
+         if(maior<val){
+             maior <- val
+         }
+     }
+ }
> 
> numero <- c(1,5,51,3)
> maior(numero)
[1] "valor maior:  0"
[1] "valor da variavel val:  1"
[1] "valor da variavel val:  5"
[1] "valor da variavel val:  51"
[1] "valor da variavel val:  3"
> 
> maior <- function(lista){
+     maior<-0
+     print(paste("valor maior: " , maior))
+     for(val in lista){
+         print(paste("valor da variavel val: ", val))
+         if(maior<val){
+             maior <- val
+         }
+     }
+     return(maior)
+ }
> maior(numero)
[1] "valor maior:  0"
[1] "valor da variavel val:  1"
[1] "valor da variavel val:  5"
[1] "valor da variavel val:  51"
[1] "valor da variavel val:  3"
[1] 51
> 
> ##ISSO TAMBEM VALE PARA CHARACTER##
> maior(nomes)
[1] "valor maior:  0"
[1] "valor da variavel val:  Jonathan"
[1] "valor da variavel val:  Danielle"
[1] "valor da variavel val:  Natasha"
[1] "Natasha"
> maior(nomesemana)
[1] "valor maior:  0"
[1] "valor da variavel val:  DOMINGO"
[1] "valor da variavel val:  SEGUNDA"
[1] "valor da variavel val:  TERÇA"
[1] "valor da variavel val:  QUARTA"
[1] "valor da variavel val:  QUINTA"
[1] "valor da variavel val:  SEXTA"
[1] "valor da variavel val:  SABADO"
[1] "TERÇA"

> ##trabalhar com factor##
> ##organiza e categoriza as informacoes##
> ordendado <- factor(nomes)
> ordendado
[1] Jonathan Danielle Natasha 
Levels: Danielle Jonathan Natasha
> 
> ##ORDENOU A ORDEM DE NOMES##
> 
> votacao <- c("candidato1", "candidato2", "candidato1", "candidato1")
> resultado <- factor(votacao)
> resultado
[1] candidato1 candidato2 candidato1 candidato1
Levels: candidato1 candidato2
> 
> summary(resultado)
candidato1 candidato2 
         3          1 

> ##OU SEJA ELE CALCULOU A VOTACAO##


##unidade 4##
