//
//  Operations.swift
//  Calculadora-iOS
//
//  Created by PeterPachMu on 20/02/23.
//

import UIKit

class Operations: UIViewController {
    
    var operador:String?
    var first: Double!
    var second: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if operador == "Addition" {
            let solution = first + second
            //textResult.text = String(resultFinal)
            
            
        }
        
    }
}
