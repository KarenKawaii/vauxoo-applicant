#Se crea la clase prime_class
class prime_class:
	#Se crea el metodo is_prime
	def is_prime(self,num):
		#Al utilizar un algoritmo que contiene un do while, se tuvieron que hacer arreglos en la codificacion.
		#La evaluacion inicia al cumplir la condicion.
		#De no cumplirse, evalua elif y de no cumplirse, evalua else. 
		if (num > 2):
			#Declaracion de variables para la condicion entrante.		
			primo = 0
			divisor = 2
			#Evaluacion de la condicion con modulo 
			if ((num % divisor)==0):
				primo = primo + 1
				divisor = divisor + 1
			else:
				divisor = divisor + 1
			#Inicia el ciclo mientras que complementa al do while
			while(num < divisor):
				if ((num % divisor)==0):
					primo = primo + 1
					divisor = divisor + 1
				else:
					divisor = divisor + 1
			if (primo == 0):
				flag = True
			else:
				flag = False
		#Al salir del ciclo y al no cumplirse el primer if, hace la comparación directa devolviendo banderas falsas o ciertas		
		elif(num == 2):
			flag = True
		else:
			flag = False
		#Imprime el numero con su bandera asignada.
		print ("El numero ", num," es ",flag)	

#Instanciar la clase. Se guarda en un objeto.
numprim = prime_class()
#Declaracion de variables.
#Lista donde los primeros 4 numeros son primos y los otros no lo son.
lnum = [2, 3, 5, 7, 1, 4, 6, 8]
cont = 0
tam = len(lnum)
#While que servira de recorrido en la lista de numeros.
while (cont < tam):
	num = lnum[cont]
	numprim.is_prime(num)	
	cont = cont + 1
					
