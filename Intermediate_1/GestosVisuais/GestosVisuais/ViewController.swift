//
//  ViewController.swift
//  GestosVisuais
//
//  Created by Aluno03 on 23/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func acaoLongPress(_ sender: UILongPressGestureRecognizer) {
        
        lblTitle.text = "Long Press"
        
    }

    @IBAction func acaoPinca(_ sender: UIPinchGestureRecognizer) {
        lblTitle.text = "Pinça"
        
    }
}

