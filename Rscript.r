> ## inicio da aula R ##
> 

> ## UNIDADE 1 ##

> ## OPERACOES MATEMATICAS##
> 3+3
[1] 6
> 3-4
[1] -1
> 3*3
[1] 9
> 4/2
[1] 2
> %% 2
Error: unexpected SPECIAL in "%%"
> 
> ## VARIAVEL ##
> var <- 3*4
> var
[1] 12
> 
> ## VARIAVEL NAO TEM TIPO PODE SER CHARACTER ##
> VAR <- "jONATHAN sARTORI bRUZARROSCO"
> VAR
[1] "jONATHAN sARTORI bRUZARROSCO"

> ##SALVAR DADOS NO ENVIRONMENT##
> idade <- 34
> nome <- "Jonathan Sartori Bruzarrosco"
> logica <- TRUE
> salario <- 1000.15
> var <- "qualquer coisa"
> 
> ## MOSTRAR A KISTA DAS VARIAVEIS SALVAS ##
> ls()
[1] "idade"   "logica"  "nome"    "salario"
[5] "var"  
> 
> ## REMOVER VARIAVEL SALVA ##
> rm(var)
> 
> ## REMOVER A LISTA TODA ##
> rm(list = ls())
> 
> 

> ## UNIDADE 2 ##

## ADICIONANDO VARIAVEIS ##
> nome <- "Jonathan Sartori Bruzarrosco"
> idade <- 34
> salario <- 1000.15
> logica <- TRUE
> 
> ## PARA SABER O TIPO DE DADO ##
> class(idade)
[1] "numeric"
> class(salario)
[1] "numeric"
> class(nome)
[1] "character"
> class(logica)
[1] "logical"
> ## LOGICAL ACEITA VERDADEIRO OU FALSO ##

> ## character vai estar sempre entre""##
> 
> ## EXEMPLO ##
> idade <- "5"
> class(idade)
[1] "character"
> 
> ## TESTAR O TIPO DO DADO ##
> is.numeric(idade)
[1] FALSE
> is.character(nome)
[1] TRUE
> is.logical(logica)
[1] TRUE
> 
> ## CONVERTER TIPO ##
> var <- idade + 5
Error in idade + 5 : non-numeric argument to binary operator
> as.integer(idAde)
Error: object 'idAde' not found
> as.integer(idade)
[1] 5
> var <- as.integer(idade) + 5
> var
[1] 10
> ## ou seja is verifica e as converte ##
> ## nem sempre se consegue exemplo ##
> as.integer(nome)
[1] NA
Warning message:
NAs introduced by coercion 

> ## INICIANDO CONDICIONAL ##
> numero <- 10
> 
> ##SHIFT + ENTER PARA PASSAR LINHA SEM RODAR CODIGO##
> 
> if(class(numero) != "numeric"){
+     print("não é numerico")
+ }else{
+     if(numero %% 2 == 0){
+         print("o numero é par")
+     }else{
+         print("o numero é impar")
+     }
+ }
[1] "o numero é par"
> 
> numero <- 11
> if(class(numero) != "numeric"){
+     print("não é numerico")
+ }else{
+     if(numero %% 2 == 0){
+         print("o numero é par")
+     }else{
+         print("o numero é impar")
+     }
+ }
[1] "o numero é impar"
> 
> numero <- "jonathan"
> if(class(numero) != "numeric"){
+     print("não é numerico")
+ }else{
+     if(numero %% 2 == 0){
+         print("o numero é par")
+     }else{
+         print("o numero é impar")
+     }
+ }
[1] "não é numerico"

> ## != diferente ##
> ## %% 2 == 0 (resto da divisao é igual a 0 ou nao)##
> ## %% = mod ##
> 
> 
> ##ESTRUTURA DE REPETIÇÃO##
> 
> professores <- c("Gobbato", "Maito", "alcides")
> 
> ##saber a quantidade de elementos dentro do conjunto##
> 
> length(professores)
[1] 3
> professores[1]
[1] "Gobbato"
> professores[2]
[1] "Maito"
> professores[0]
character(0)
> ##diferente de outras linguagens R comeca no 1##
> 
> print(paste("o nome do professor é: ",professores[1] ))
[1] "o nome do professor é:  Gobbato"
> 
> for(pos in 1:length(professores)){
+     print(paste("o nome do professor é:", professores[pos]))
+ }
[1] "o nome do professor é: Gobbato"
[1] "o nome do professor é: Maito"
[1] "o nome do professor é: alcides"

> posicao <- 1

> while(posicao <= length(professores)){
+     print(paste("o nome do professor é:", professores[posicao]))
+     posicao <- posicao + 1 #incremento
+ }
[1] "o nome do professor é: Gobbato"
[1] "o nome do professor é: Maito"
[1] "o nome do professor é: alcides"

> ## UNIDADE 3 ##


