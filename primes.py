"""
This module verify if a number is prime or not.
"""


class PrimeClass(object):
    """
    Contains the method is_prime
    """

    def is_prime(self, num_int):
        """
        Returns the value of the flag number TRUE or FALSEY
        """
        # your primes code here
        #The method was modified following the algorithm with do while.
        #The function is evaluated after completing the condition.
        #if not starts the elif or else.
        if (num > 2):
        #Declares the var for the condition.
            primo = 0
            divisor = 2
            #Evaluation of the condition with module.
            if ((num % divisor) == 0):
                primo = primo + 1
                divisor = divisor + 1
            else:
                divisor = divisor + 1
                #Start the loop while it complements the do while
                while(num < divisor):
                    if ((num % divisor) == 0):
                        primo = primo + 1
                        divisor = divisor + 1
                    else:
                        divisor = divisor + 1
            if (primo == 0):
                flag = True
            else:
                flag = False
        #If the condition isn't true compares and then return the flag.
        elif(num == 2):
            flag = True
        else:
            flag = False
        #Imprime el numero con su bandera asignada.
        return flag

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



