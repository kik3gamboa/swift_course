//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Telecomunicaciones Abiertas de México on 11/18/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paisLabel: UILabel!
    @IBOutlet weak var hamburguesaLabel: UILabel!
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let bgcolor = Colores()
    
    @IBAction func dameHamburguesa() {
        let paisSelect = paises.obtenPais()
        let hamburgerSelect = hamburguesas.obtenHamburguesa()
        paisLabel.text = paisSelect
        hamburguesaLabel.text = hamburgerSelect
        view.backgroundColor = bgcolor.regresaColor()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}