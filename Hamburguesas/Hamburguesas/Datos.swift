//
//  Datos.swift
//  Hamburguesas
//
//  Created by Telecomunicaciones Abiertas de México on 11/18/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import Foundation
import UIKit


struct Colores {
    
    let colores = [UIColor(red: 210/255, green: 90/255, blue: 45/255, alpha: 1),
            UIColor(red: 40/255, green: 170/255, blue: 45/255, alpha: 1),
            UIColor(red: 3/255, green: 180/255, blue: 90/255, alpha: 1),
            UIColor(red: 210/255, green: 190/255, blue: 5/255, alpha: 1),
            UIColor(red: 120/255, green: 120/255, blue: 50/255, alpha: 1),
            UIColor(red: 130/255, green: 80/255, blue: 90/255, alpha: 1),
            UIColor(red: 130/255, green: 130/255, blue: 130/255, alpha: 1),
            UIColor(red: 3/255, green: 50/255, blue: 90/255, alpha: 1)]
        
        func regresaColor() -> UIColor{
            let posicion = Int (arc4random()) % colores.count
            return colores[posicion]
        }
    
}

class ColeccionDePaises{
    let paises : [String] = ["China", "EE UU", "India", "Japón", "Alemania", "Rusia", "Brasil", "Indonesia", "Reino Unido", "Francia",
        "México", "Italia", "Corea del Sur", "Arabia Saudíta", "Canadá", "España", "Turquía", "Irán", "Australia", "Taiwan"]

    func obtenPais() -> String{
        let posicion = Int (arc4random()) % paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesas{
    let hamburguesas : [String] = ["Superburger", "Cheeseburger", "Big Devil", "Sirloin Beef Burger", "Sliders", "Bill's Burger", "Le Pigeon Burger",
        "Jucy Lucy", "Double Bypass Burger", "Lola", "Cheeseburger", "Hickoryburger", "The Original Burger", "Bash Style", "Double Cheeseburger",
        "Build-Your-Own Burger", "Green Chile Cheeseburger", "The Father's Office Burger", "Black Label Burger", "Luger Burger"]
    
    func obtenHamburguesa() -> String{
            let posicion = Int (arc4random()) % hamburguesas.count
            return hamburguesas[posicion]
    }
}
