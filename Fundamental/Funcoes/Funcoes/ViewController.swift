//
//  ViewController.swift
//  Funcoes
//
//  Created by Aluno03 on 17/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Message: \(wellcome(name: "Pedro"))")
        print(sum(x: 2, y: 2))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func f(x:Int) -> Int {
        return 2*x*x + 3*x - 1
    }
    
    func sum(x:Int, y:Int) -> Int {
        return x+y
    }
    
    func wellcome(name:String) -> String {
        return "Bem Vindo \(name)"
    }


}

