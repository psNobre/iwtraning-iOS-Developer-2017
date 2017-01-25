//
//  ViewController.swift
//  PickerData
//
//  Created by Aluno03 on 23/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dataF = DateFormatter()
        dataF.dateFormat = "dd/MM/yyyy HH:mm"
        let data = dataF.date(from: "26/09/1992 18:52")

         
        pickerDate.setDate(data!, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func viewValue(_ sender: Any) {
        
        let data = pickerDate.date
        
        let df = DateFormatter()
        df.dateFormat = "dd/MM/yyyy HH:mm"
        
        df.string(from: data)
        
        let alert = UIAlertController(title: "Horario", message: df.string(from: data), preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default , handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
        
    }

}

