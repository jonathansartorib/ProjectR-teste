## UNIDADE 4



arquivo1 = open("exemplo1.txt", "r", encoding='utf8')

print(arquivo1.read())

arquivo1.seek(0,0)

print(arquivo1.read(6).upper())

print(arquivo1.read())

print(arquivo1.read())

arquivo1.seek(0,0)#move o poneiro pro comeco do txt

arquivo1(arquivo1.read())#leu o arquivo do inicio

arquivo2 = open("exemplo1.txt", "w")

arquivo2.write("gravando outros dados")

arquivo2.close()

arquivo3 = open("exemplo1.txt", "r+")

print(arquivo3.read())

arquivo3.write("Aula de Python")

arquivo3.close()

arquivo3 = open("exemplo1.txt", "r")

print(arquivo3.read())

import pandas as pd

nome_arq = "vgsales.csv"

df = pd.read_csv(nome_arq)

df.head()

df.tail()

df["Global_Sales"]

df2 = pd.DataFrame({'Publisher', : df['Publisher'], 'Sales': df['Global_Sales']})

df2

df2.max()

media = df["Global_Sales"].mean()

media



import matplotlib.pyplot as plt

df

obj = ("Nintendo", "Activision", "Capcom", "Ubisoft", "Microsoft Game Studios")

obj

valores = [len(df.loc[df["Publisher"] == obj[0]]),
           len(df.loc[df["Publisher"] == obj[1]]),
           len(df.loc[df["Publisher"] == obj[2]]),
           len(df.loc[df["Publisher"] == obj[3]]),
           len(df.loc[df["Publisher"] == obj[4]])
          ]

colors = ['blue', 'red', 'yellow', 'green', 'pink']

plt.pie(valores, labels=obj, colors=colors, autopct="%1.f%%", startangle=0)
plt.show()



## UNIDADE 5


import numpy as np

import matplotlib.pyplot as plt

paises = ['EUA', 'China', 'Brasil', 'Argentina', 'Alemanha']

bronze = np.array([38,17,26,19,15])

prata = np.array([12,56,78,12,34])


# In[ ]:


ouro = np.array([24,56,12,57,89])

ind = np.arange(len(paises))

ind

plt.bar(ind, ouro, label='Ouro', color='gold', bottom=prata+bronze)
plt.bar(ind, prata, label='Prata', color='silver', bottom=bronze)
plt.bar(ind, bronze, label='Bronze', color='#CD853F')
plt.xticks(ind, paises)
plt.ylabel("Medalhas")
plt.xlabel("Paises")
plt.legend()
plt.title("Medalhas - Olimpiadas 2018")
plt.show

import matplotlib.pyplot as plt

import pandas as pd

df = pd.read_csv('aixsdata.csv')

df

media = df["Cars Sold"].mean()

media

nome = []

maximo = df["Cars Sold"].max()

maximo

for i in range(len(df)):
    if (df["Cars Sold"][i] == maximo):
        nome.append(df["Fname"][i])  ## dados que existem na planilha.csv que nao tenho

nome.sort()

print(nome)

obj = ("F", "M")

valores = [len(df.loc[df["Gender"] == "F"]), len(df.loc[df["Gender"] == "M"])]

valores

colors = ["green", "red"]

plt.pie(valores, labels=obj, colors=colors, autopct="%0.2f%%", startangle=12)
plt.legend(obj)
plt.axis('equal')