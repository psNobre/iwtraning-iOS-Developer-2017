//
//  ViewController.swift
//  CocoaTouchExemplo
//
//  Created by Aluno03 on 17/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblTitle:UILabel!
    var count:Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeTitle(_ sender: Any) {
        count = count + 1
        lblTitle.text = "Mudou \(count) vezes"
    }
}

