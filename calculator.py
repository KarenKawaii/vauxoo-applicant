#Se declara la clase calculator_class
class calculator_class:	
	#Se crea el metodo sum.
	def sum(self,lnum):
		#Guarda el lenght tamaño de la lista.		
		tam = len(lnum)
		#Contador usado en la comparacion dentro de while.		
		cont = 0
		#Asignacion del valor 0 a la var suma.
		suma = 0
		#Mientras tama sea menor que el cont, sigue sumando y aumenta cont.
		while (cont < tam):
			suma = suma + lnum[cont]
			cont = cont + 1
			#Imprime la suma
		print("La suma de los numeros es: ",suma)
#Guarda la clase en un objeto.
calcula = calculator_class()
#Declaracion de variables.
lnum = [1, 2, 3, 4, 5, 6]
#El objeto llama a la clase y metodo sum.
calcula.sum(lnum)

        

