#Importa el archivo calculator.py
import calculator
#Dar el valor de lenght al array (lista) que guardara los numeros. 
cant = int (input ("Ingresa cuantos numeros vas a sumar: "))
#Contador que determina el tope.
cont = 1
#Declara la lista vacia.
num = []
#Ciclo que ingresara los numeros a la lista estando el contador dentro del rango de cantidad de numeros
for cont in range (cant):
	var= int (input ("Ingresa un numero: ")) 
	num.append(var)
	cont = cont + 1
#Instancia de la clase calculator_class para usar el metodo sum de la misma.
calcula = calculator.calculator_class()
#Manda llamar al metodo sum con los parametros que le incluimos.
calcula.sum(num)




