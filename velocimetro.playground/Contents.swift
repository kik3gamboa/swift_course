//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad : Velocidades
    var contador = 0
    
    init(){
        self.velocidad = Velocidades.Apagado
    }
  
    func cambioDeVelocidad(actual : Int, velocidadEnCadena : String) -> (Int, String) {
        var km : Int = 0
        var msj : String = "Apagado"
        
        if(actual == 0){
            velocidad = .VelocidadBaja
            km = 20
            msj = "Velocidad Baja"
        }else if(actual == 20){
            velocidad = .VelocidadMedia
            km = 50
            msj = "Velocidad Media"
        }else if(actual == 50){
            velocidad = .VelocidadAlta
            km = 120
            msj = "Velocidad Alta"
        }else if(actual == 120){
            velocidad = .VelocidadMedia
            km = 50
            msj = "Velocidad Media"
        }
        
        if(contador == 0){
            velocidad = .Apagado
            km = 0
            msj = "Apagado"
        }
        
        contador++
        return (km, msj)
    }
}

var auto = Auto()

for n in 1...20{
    
    var resultado = auto.cambioDeVelocidad(auto.velocidad.rawValue, velocidadEnCadena: String(auto.velocidad))

    if(auto.velocidad.rawValue == 0){
        print ("\(n). 0, Apagado")
    } else {
        print ("\(n). \(resultado.0), \(resultado.1) ")
    }
    
}















