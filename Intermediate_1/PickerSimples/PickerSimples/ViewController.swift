//
//  ViewController.swift
//  PickerSimples
//
//  Created by Aluno03 on 24/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    
    var cidades:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cidades = ["Fortaleza","Natal", "Recife", "Quixada"]
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func exibirValor(_ sender: Any) {
        
        let alert =  UIAlertController(title: "Cidade", message: cidades[picker.selectedRow(inComponent: 0)], preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
        
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cidades.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return cidades[row]
    }
    
    
}

