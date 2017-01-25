//
//  ViewController.swift
//  TableView
//
//  Created by Aluno03 on 24/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var btnAcao: UIButton!
    
    @IBOutlet weak var txtNome: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtTelefone: UITextField!
    
    @IBOutlet weak var tblAlunos: UITableView!
    
    var nomes:[String]!
    var emails:[String]!
    var telefones:[String]!
    var fotos:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnAcao.setTitle("Editar", for: .normal)
        
        nomes = ["Maria Joaquina", "Jaime Palilo", "Jorge Del Salto"]
        emails = ["mj@gmail.com", "jp@gmail.com", "jds@gmail.com"]
        telefones = ["2342-4234", "2343-3242", "4245-1123"]
        fotos = ["mariajoaquina", "jaimepalilo", "jorgedelsalto"]
        
    }

    
    @IBAction func adicionar(_ sender: Any) {
    }
    
    @IBAction func acaoTabela(_ sender: Any) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        celula.textLabel?.text = "NOME"
        celula.detailTextLabel?.text = "Email"
        
        
        return celula
    }
    
    
    
    
}

