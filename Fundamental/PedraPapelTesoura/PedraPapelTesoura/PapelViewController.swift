//
//  PapelViewController.swift
//  PedraPapelTesoura
//
//  Created by Aluno03 on 19/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class PapelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func alerta(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Parabéns", message: "Voce Ganhou", preferredStyle: .alert)
        
        alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)
        
        
        
    }
    
    

}
