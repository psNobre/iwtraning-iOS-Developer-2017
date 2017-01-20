//
//  TesouraViewController.swift
//  PedraPapelTesoura
//
//  Created by Aluno03 on 19/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class TesouraViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
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

    @IBAction func carregar(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Escolha", message: "Entre as 3", preferredStyle: .actionSheet)
        
        alerta.addAction(UIAlertAction(title: "Pedra", style: .default, handler: { (UIAlertAction) -> Void in

            self.imageView.image = UIImage(named: "pedra.png")
        }))
        
        alerta.addAction(UIAlertAction(title: "Papel", style: .default, handler: { (UIAlertAction) -> Void in
            self.imageView.image = UIImage(named: "papel.png")
        }))
        
        alerta.addAction(UIAlertAction(title: "Tesoura", style: .default, handler: { (UIAlertAction) -> Void in
            self.imageView.image = UIImage(named: "tesoura.png")
        }))
        
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (UIAlertAction) -> Void in
        }))
        
        self.present(alerta, animated: true, completion: nil)
        
        
    }
}
