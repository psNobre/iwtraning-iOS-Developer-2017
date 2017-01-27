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
    
    var turmas:[String]!
//    var alunos:[[[String]]]!
    
    var nomes:[String]!
    var emails:[String]!
    var telefones:[String]!
    var fotos:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnAcao.setTitle("Editar", for: .normal)
        
        turmas = ["Turma A", "Turma B", "Turma C"]
        
//        alunos = [
//            [
//                ["Maria Joaquina", "Jaime Palilo", "Jorge Del Salto"],
//                ["mj@gmail.com", "jp@gmail.com", "jds@gmail.com"],
//                ["2342-4234", "2343-3242", "4245-1123"],
//                ["mariajoaquina", "jaimepalilo", "jorgedelsalto"]
//            ],
//            [
//                ["Cirilo"],
//                ["c@gmail.com"],
//                ["2345-1234"],
//                ["cirilo"]
//            
//            ]
//        
//        ]
        
        nomes = ["Maria Joaquina", "Jaime Palilo", "Jorge Del Salto"]
        emails = ["mj@gmail.com", "jp@gmail.com", "jds@gmail.com"]
        telefones = ["2342-4234", "2343-3242", "4245-1123"]
        fotos = ["mariajoaquina", "jaimepalilo", "jorgedelsalto"]
        
    }
    
    @IBAction func adicionar(_ sender: Any) {
        
        
        var campos = ""
        
        if txtNome.text == "" {
            campos += " [Nome] "
        }
        
        if txtEmail.text == "" {
            campos += " [Email] "
        }
        
        if txtTelefone.text == "" {
            campos += " [Telefone] "
        }
        
        
        if campos == "" {
            
            nomes.append(txtNome.text!)
            emails.append(txtEmail.text!)
            telefones.append(txtTelefone.text!)
            fotos.append("cirilo")
            
            tblAlunos.reloadData()
            
            txtNome.text = ""
            txtEmail.text = ""
            txtTelefone.text = ""
            
            
        } else {
            let alerta = UIAlertController(title: "Campos Faltando", message: campos, preferredStyle: .alert)
            
            alerta.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alerta, animated: true, completion: nil)
        
        }
        
    }
    
    @IBAction func acaoTabela(_ sender: Any) {
        
        if tblAlunos.isEditing {
            tblAlunos.setEditing(false, animated: true)
            btnAcao.setTitle("Editar", for: .normal)
            
            
        }else{
            tblAlunos.setEditing(true, animated: true)
            btnAcao.setTitle("Cancelar", for: .normal)
            
        }
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return turmas.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nomes.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return turmas[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Total: \(nomes.count)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var celula = tableView.dequeueReusableCell(withIdentifier: "id")
        
        if celula == nil {
            celula = UITableViewCell(style: .subtitle, reuseIdentifier: "id")
        }
    
        celula?.accessoryView = UIImageView(image: UIImage(named: fotos[indexPath.row])!)
        
        let icon = UIImage(named: "iconeV")
        let iconD = UIImage(named: "iconeV_destaque")

        celula?.imageView?.image = icon
        celula?.imageView?.highlightedImage = iconD
        
        celula?.textLabel?.text = nomes[indexPath.row]
        celula?.detailTextLabel?.text = emails[indexPath.row]
        
        
        //Obs
        let op = UISwitch()
        op.tag = indexPath.row
        
        op.addTarget(self, action: #selector(ViewController.acaoSw(_:)), for: UIControlEvents.valueChanged)
        
        celula?.accessoryView = op
        
        return celula!
    }
    
    
    func acaoSw(_ sender:UISwitch) {
        print("vai \(sender.tag)")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        let alerta = UIAlertController(title: nomes[indexPath.row], message: telefones[indexPath.row], preferredStyle: .alert)
            
        alerta.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
        self.present(alerta, animated: true, completion: nil)
    
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        nomes.remove(at: indexPath.row)
        emails.remove(at: indexPath.row)
        telefones.remove(at: indexPath.row)
        fotos.remove(at: indexPath.row)
        
        tableView.reloadData()
        
    }
    
    
    
    
}

