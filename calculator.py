"""
This module contains a class and functions to make an addition.
"""
#It declares the class


class CalculatorClass(object):
    """
    This class make a calculation. Contains the sum method.
    """

    def sum(self, num_list):
        """
        Recieves as parameters the numbers list, then it makes the addition
        """
        # your sum code here
        #Takes the lenght of the num_list
        tam = len(num_list)
        #Counter used in the while.
        cont = 0
        #Equals suma with 0.
        suma = 0
        #While tam been < than cont, keep adding and make cont+1
        while cont < tam:
            suma = suma + num_list[cont]
            cont = cont + 1
            #Return the result of the addition
            return suma

NUM_LIST = [1, 2, 3, 4, 5, 6]
