//
//  ViewController.swift
//  PickerComposto
//
//  Created by Aluno03 on 24/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    
    var tipos:[String]!
    var comidas:[[String]]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipos = ["Café","Almoço", "Janta"]
    
        comidas = [
            ["Pão","Queijo", "Café"],
            ["Arroz","Feijão", "Café"],
            ["Carne","Café", "Café"]
        ]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func exibirValor(_ sender: Any) {
        
        let message = "Tipo: \(tipos[picker.selectedRow(inComponent: 0)]) Comida: \(comidas[picker.selectedRow(inComponent: 0)][picker.selectedRow(inComponent: 1)])"
        
        let alert = UIAlertController(title: "Tipo e Comida", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        var quant = 0
        
        if component == 0 {
            quant = tipos.count
        }
        
        if component == 1 {
            let linha  = picker.selectedRow(inComponent: 0)
            quant =  comidas[linha].count
        }
        
        return quant
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        var title = ""

        
        if component == 0{
          title = tipos[row]
        }
        
        if component == 1{
            let linha  = picker.selectedRow(inComponent: 0)
        
            title = comidas[linha][row]
        }
        
        return title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            picker.reloadComponent(1)
            picker.selectRow(0, inComponent: 1, animated: true)
        }
    }

}

