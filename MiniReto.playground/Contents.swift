//: Playground - noun: a place where people can play

import UIKit

var numeros = 0...100
var salida = ""

for num in numeros {
    
    salida = "#\(num)"
    
    if( (num % 5) == 0){
        salida += " - Bingo"
    }
    
    if( (num % 2) == 0){
        salida += " - Par"
    }
    
    if( (num % 2) != 0){
        salida += " - Impar"
    }
    
    if( num >= 30 && num <= 40){
        salida += " - Viva Swift"
    }
    
    if( num == 0 )
    {
        salida = "#\(num)"
    }
    
    print(salida)

}
