//
//  ViewController.swift
//  Mensagens
//
//  Created by Aluno03 on 26/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit
import MessageUI


class ViewController: UIViewController, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendEmail(_ sender: Any) {
    
        if MFMailComposeViewController.canSendMail() {
            
            let emails = ["treinamento@iwtraining.com.br"]
            
            let email = MFMailComposeViewController()
            
            email.mailComposeDelegate = self
            
            email.setSubject("Email de Teste")
            email.setToRecipients(emails)
            email.setMessageBody("Corpo do email Legal", isHTML: true)
            
            self.present(email, animated: true, completion: nil)
            
            
        }else{
        
            print("Não rola cara.")
        
        }
        
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if result == .cancelled {
            print("Cancelou")
        }
        
        if result == .saved {
            print("Salvo")
        }
        
        if result == .sent {
            print("Enviada com successo")
        }
        
        print("ERRO")
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func sendSMS(_ sender: Any) {
        
        if MFMessageComposeViewController.canSendText() {
            
            let numbers = ["85981552230"]
            
            let message = MFMessageComposeViewController()
            
            message.messageComposeDelegate = self
            
            message.recipients = numbers
            message.body = "OI"
            
            self.present(message, animated: true, completion: nil)
            
            
        }else{
            
            print("Não rola cara.")
            
        }
    }
    
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        if result == .cancelled {
            print("Cancelou")
        }
        
        if result == .failed {
            print("fail")
        }
        
        if result == .sent {
            print("Enviada com successo")
        }
        
        print("ERRO")
        
        self.dismiss(animated: true, completion: nil)
    }
    
}

