//
//  ViewController.swift
//  Internacionalizacao
//
//  Created by Aluno03 on 26/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txrName: UITextField!
    
    @IBOutlet weak var lblGeneric: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblGeneric.text = NSLocalizedString("label", comment: "")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func register(_ sender: Any) {
        
        let alert = UIAlertController(title: NSLocalizedString("welcome", comment: "").replacingOccurrences(of: "#name#", with: txrName.text!), message: txrName.text!, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
        
    }

}

