##UNIDADE 5 ##

> ##GERAÇÃO DE GRAFICOS##
> 
> ##VERIFICAR A BIBLIOTECA GGPLOT2##
>
The downloaded binary packages are in
	C:\Users\jonat\AppData\Local\Temp\Rtmp6zFjF9\downloaded_packages
> library(ggplot2)

> ##GRAFICO DE DISPERSAO FUNCAO PLOT##
> 
> n <- 100
> x <- 1:n
> y <- 5 + 2 * x + rnorm(n, sd = 30)

> plot(x, y)
> ##GEROU O GRAFICO##
> ##GRAFICO DE DISPERSAO##
> 
> ##MUDAR TIPO DE GRAFICO##
> 
> #grafico de linha##
> plot(x, y, type = "l")
##OUTROS##
> plot(x, y, type = "p")
> plot(x, y, type = "b")
> plot(x, y, type = "h")

> ##Histograms##
> help("hist")
> 
> hist(rnorm(1000), breaks = 6)
> ##nesse exemplo usou controle de barras 6##

> ##IMPORTOU OUTRA FUCKING PLANILHA DO EXCEL##
> ##PARA GERAR PLAMILHAS ATRAVES DELA##
> 
> library(readxl)pagamento <- read_excel("C:/Users/jonat/Downloads/pagamento.xls")

> ##importou a planilha##
> ##para ver a planilha fisicamente##
> View(pagamento)
Error in View : object 'pagamento' not found
> ##deu erro pois nao tenho a planilha pagamento##
> 
> p1 <- ggplot() + geom_line(aes(y=valor, x=regiao), data=pagamento)

> ##adicionando labs ao grafico##
> p1 + labs(title="pagamentos", x="Localidades", y="Valores R$", caption = "Pagamentos")
Error: object 'p1' not found
##ERRO POIS NAO TENHO A P1 NA MEMORIA##
> 
> ##OS GRAFICOS PODEM SER EXPORTADOS EM IMAGEM E PDF##
> 
> ##GRAFICO DE BARRA PRECISA DO COUNT PARA LIMITAR A ALTURA##
> 
> ggplot (pagamento, aes(x=regiao, y=valor)) + geom_bar(stat = "identity")

> ##TAPPLY##
> 
> tapply(pagamento$valor, pagamento$Regiao, mean)
> ##gerou a media##

> ##pegar os graficos temporarios gerados agora##
> ##e transformar em grafico de barras##
> 
> barplot(tapply(pagamento$valor, pagamento$Regiao, mean))



> ##UNIDADE 6##
> 

> ##ESTUDO DE CASO##
> #como o R pode ser utilizado no dia a dia #
> 
> #Exemplo o R com internet pode ser utilizado com investimentos ##
> ##Acessar em um site as acoes##
> 
> ##exemplo avaliar acoes Microsoft##
> 
> ##necessita biblioteca quantmod##
> 
> install.packages("quantmod")

> library(quantmod)
Carregando pacotes exigidos: xts
Carregando pacotes exigidos: zoo

Attaching package: ‘zoo’

The following objects are masked from ‘package:base’:

    as.Date, as.Date.numeric

Carregando pacotes exigidos: TTR
Registered S3 method overwritten by 'quantmod':
  method            from
  as.zoo.data.frame zoo 
> ##pronto apto para usar##

> ##tem que saber exatamente o codigo da acao##

> ##acoes da microsoft, pelo yahoo, periodo dias atuais de 15 dias atras ate ontem##
> 
> getSymbols("MSFT", src="yahoo", from = Sys.Date() -15, to = Sys.Date()-1)
‘getSymbols’ currently uses auto.assign=TRUE by default, but will
use auto.assign=FALSE in 0.5-0. You will still be able to use
‘loadSymbols’ to automatically load data. getOption("getSymbols.env")
and getOption("getSymbols.auto.assign") will still be checked for
alternate defaults.

This message is shown once per session and may be disabled by setting 
options("getSymbols.warning4.0"=FALSE). See ?getSymbols for details.

[1] "MSFT"

> View(MSFT)
> ##abriu uma janela com os dados da acao##

> View(MSFT)
> plot(MSFT)
> candleChart(MSFT)
> #gerou graficos das acoes##
> 
> ##exemplo o R consiga ler conteudo pdf##
> ##e ver por exemplo palavras que mais se repetem##
> ##ou seja quanto expressivo é a palavra dentro do texto##
> 
> ##criar variavel##
> > library(readr)
> UNIDADE1 <- read_csv("C:/Users/jonat/Desktop/FACULDADE/MATEMATICA APLICADA/UNIDADE1.pdf")
Rows: 21711 Columns: 1
##criado variavel unidade1 importando pdf##

##parei em 8 minutos da aula 6##


