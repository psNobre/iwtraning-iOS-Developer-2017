//
//  ViewController.swift
//  Introducao
//
//  Created by Aluno03 on 17/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Meu Primeiro Código.")
        
        //Variáveis
        var i:Int
        i = 3
        
        let j = 3
        
        let nome:String = "Maria Joaquina"
        var idade:Int = 18
        var aprovada:Bool = true
        
        var a=1,b=5,c=7
        
        //Output
        print("Nome do Aluno :" + nome)
        print("\(nome) tem \(idade) anos de idade")
        
        var aNovelas:[String] = ["Maria do Bairro", "Marimar", "Chaves"]
        var outrasNovelas = ["Vamp", "A Indomada"]
        
        aNovelas.insert("A Ususrpadora", at: 0)
        aNovelas.remove(at: 2)
        aNovelas[2] = "Novo Valor"
        
        print(aNovelas)
        print("\(aNovelas.count)")
        
        //Dicionario
        var estados:[String:String] = ["CE":"Ceará", "SP" : "São Paulo", "PE": "Pernambuco"]
        
        estados.updateValue("Novo Ceará", forKey: "CE")
        
        print(estados["CE"])
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

