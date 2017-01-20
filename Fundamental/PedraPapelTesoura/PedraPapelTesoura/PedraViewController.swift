//
//  PedraViewController.swift
//  PedraPapelTesoura
//
//  Created by Aluno03 on 19/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class PedraViewController: UIViewController {

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

    @IBAction func perdedorAction(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let perdedorVC = storyBoard.instantiateViewController(withIdentifier: "sbPerdedor") as! PerdedorViewController
        
        perdedorVC.nome = "PEDRO"
    
        
        self.present(perdedorVC, animated: true, completion: nil)
        
        
    }
}
