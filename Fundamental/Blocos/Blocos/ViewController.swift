//
//  ViewController.swift
//  Blocos
//
//  Created by Aluno03 on 17/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //SEM parametro e SEM retorno
        let ola = {() -> Void in
            print("Olá")
        }
        
        ola()
    
        //SEM parametro e COM retorno
        let vou = {() -> String in
            return "Vou"
        }
        
        print( vou() )
        
        //COM parametro e COM retorno
        let mult = {(a:Int, b:Int)->Int in
            return a*b
        }
        
        print( mult(2,10) )
        
        //COM parametro e SEM retorno
        var p = 2
        var b = 2
        
        let somar = {(a:Int,b:Int) -> Void in
            print(a+b)
            print(p+b)
        }
        
        somar(2,2)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

