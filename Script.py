## UNIDADE 2


## Classe, Orientado a Objeto e herança


class Carro():
    def __init__(self, initMarca, initModelo, initCor): #com dois __
        self.marca = initMarca
        self.modelo = initModelo
        self.cor = initCor


carro1 = Carro("Fiat","UNO","preto")
carro2 = Carro("Honda","HR-V","branco")
print(carro1.marca) #mostra Fiat
carro2.marca = "Toyota" #altera de Honda para Toyota
print(carro2.marca

carro3 = ("Py","Python","azul") #criando novo objeto      

carro3.marca

carro3 = Carro("Py","Python","azul")
      
carro3.marca # fazendo carro3. e apertando tab da as opcoes

carro3.modelo #em cima deu erro pois faltou a lista Carro


class FormaGeometrica():
    def __init__(self, initX, initY):
        self.x = initX
        self.y = initY

    def getX(self):
        return self.x

    def setX(self, newX):
        self.x = newX

    def getY(self):
        return self.y

    def setY(self, newY):
        self.y = newY



class Circulo(FormaGeometrica):
    PI = 3.14 # definiu a variavel PI

    def __init__(self, initRaio, initX, initY):
        super().__init__(initX, initY)
        self.raio = initRaio

    def setRaio(self, newRaio):
        self.raio = newRaio

    def getRaio(self):
        return self.raio

    def calcArea(self):
        return Circulo.PI * (self.raio * self.raio)

    def __str__(self):
        return "Circulo de raio: "+ str(self.raio) + ", area: " + str(self.calcArea()) +"\n"+ "(X,Y)=("+str(self.getX())+","+str(self.getY())+")"



class Quadrado(FormaGeometrica):

    def __init__(self, initLado, initX, initY):
        super().__init__(initX, initY)
        self.lado = initLado

    def setLado(self, newLado):
            self.lado = newLado

    def getLado(self):
            return self.lado

    def calcArea(self):
            return (self.lado*self.lado)

    def __str__(self):
            return "Quadrado de lados: "+ str(self.lado) + ", area: " + str(self.calcArea()) +"\n"+ "(X,Y)=("+str(self.getX())+","+str(self.getY())+")"


forma1 = Circulo(100, 0, 0) #100=raio 0=x 0=y

forma1

forma1.calcArea

forma2 = Quadrado(20, 3, 4)

print(forma1)

print(forma2)

forma3 = Quadrado(40, 0, 0)

print(forma3
