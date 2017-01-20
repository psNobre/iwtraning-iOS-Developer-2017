//
//  ViewController.swift
//  Componentes
//
//  Created by Aluno03 on 18/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtNome: UITextField!

    @IBOutlet weak var componenteImageView: UIImageView!
    
    @IBOutlet weak var componenteSwitch: UISwitch!
    
    @IBOutlet weak var componenteSlider: UISlider!
    
    @IBOutlet weak var componenteLabel: UILabel!
    
    @IBOutlet weak var componenteSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var componenteScrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        componenteLabel.text = String(format: "%.0f", componenteSlider.value)
        
        componenteImageView.image = UIImage(named: "tamagotchi.png")
        
        
        let fotoAngelica = UIImage(named: "angelica.jpg")
        let fotoView = UIImageView(image: fotoAngelica)
        
        let w = fotoAngelica?.size.width
        let h = fotoAngelica?.size.height
        
        componenteScrollView.contentSize = CGSize(width: w!, height: h!)
        componenteScrollView.addSubview(fotoView)
        
//        txtNome.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func acaoExecutar(_ sender: Any) {
        
        var nome = ""
        if txtNome.text != nil {
            nome = txtNome.text!
        }
        
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: "Execução Realizada " + nome,
            preferredStyle: .alert
        )
        
        alerta.addAction(UIAlertAction(title: "Ok", style: .default, handler:nil))

        
        if componenteSwitch.isOn {
            self.present(alerta, animated: true, completion: nil)
        }
        
      
        
    }
    
    @IBAction func acaoComprar(_ sender: Any) {
        let pergunta = UIAlertController(title: "Forma de Pagamento ", message: "Escolha a forma de pagamento", preferredStyle: .actionSheet)
        
        pergunta.addAction(UIAlertAction(title: "PayPal", style: .default, handler:{ (UIAlertAction) -> Void in
            print("PayPal")
        
        }))
        
        pergunta.addAction(UIAlertAction(title: "Credit", style: .default, handler:{ (UIAlertAction) -> Void in
            print("Credit")
            
        }))
        
        pergunta.addAction(UIAlertAction(title: "Cash", style: .default, handler:{ (UIAlertAction) -> Void in
            print("Cash")
            
        }))
        
        pergunta.addAction(UIAlertAction(title: "Deletar", style: .destructive, handler:{ (UIAlertAction) -> Void in
            print("Deletar")
            
        }))
        
        pergunta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler:{ (UIAlertAction) -> Void in
            print("Cancelar")
            
        }))
        
        self.present(pergunta, animated: true, completion: nil)
        
    }
    
    @IBAction func acaoMudaValorSlide(_ sender: Any) {
        
        componenteLabel.text = String(format: "%.0f", componenteSlider.value)
        
        
    }
    
    @IBAction func acaoMudaValorSegmented(_ sender: Any) {
        
         componenteLabel.text = componenteSegmentedControl.titleForSegment(at: componenteSegmentedControl.selectedSegmentIndex)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        txtNome.resignFirstResponder()
        
        self.view.endEditing(true)
    }

}

