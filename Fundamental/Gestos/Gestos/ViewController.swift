//
//  ViewController.swift
//  Gestos
//
//  Created by Aluno03 on 23/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

extension UIViewController{
    func paraGraus(rad: CGFloat) -> CGFloat {
        return rad * 180 / CGFloat(M_PI)
    }
    
}

extension CGFloat {
    func paraGraus() -> CGFloat {
        return self * 180 / CGFloat(M_PI)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Toque Longo
        let touchLong =  UILongPressGestureRecognizer(target: self, action: #selector(ViewController.touchLongAction(_:)))
        
        touchLong.minimumPressDuration = 0.5
        touchLong.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(touchLong)
        
        //Toque Duplo
        let touchDuplo =  UITapGestureRecognizer(target: self, action: #selector(ViewController.touchDuploAction(_:)))
        
        touchDuplo.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(touchDuplo)
        
        //Deslize para a esquerda
        let slideLeft =  UISwipeGestureRecognizer(target: self, action: #selector(ViewController.slideActionLeft(_:)))
        
        slideLeft.direction = .left
        self.view.addGestureRecognizer(slideLeft)
        
        //Deslize para a Direita
        let slideRight =  UISwipeGestureRecognizer(target: self, action: #selector(ViewController.slideActionRight(_:)))
        
        slideRight.direction = .right
        self.view.addGestureRecognizer(slideRight)
        
        //Rotação
        let rotation =  UIRotationGestureRecognizer(target: self, action: #selector(ViewController.actionRotation(_:)))
        
        self.view.addGestureRecognizer(rotation)
        
        
        //Pinça
        let pinca =  UIPinchGestureRecognizer(target: self, action: #selector(ViewController.actionPinca(_:)))
        
        self.view.addGestureRecognizer(pinca)
        
        
        //edgePan
        let edgePan =  UIScreenEdgePanGestureRecognizer(target: self, action: #selector(ViewController.edgePanAction(_:)))
        
        edgePan.edges = .left
        
        self.view.addGestureRecognizer(edgePan)
        
        
        //Pan
        let pan =  UIPanGestureRecognizer(target: self, action: #selector(ViewController.panAction(_:)))
        
        pan.minimumNumberOfTouches = 2
        
        self.view.addGestureRecognizer(pan)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func touchLongAction( _ sender:UIGestureRecognizer) {
        
        lblTitle.text = "Long Touch"
        
        let loc = sender.location(in: self.view)
        lblValue.text = "X: \(loc.x) Y: \(loc.y)"
    }
    
    func touchDuploAction( _ sender:UIGestureRecognizer) {
        
        lblTitle.text = "Toque Duplo"
        
        let loc = sender.location(in: self.view)
        lblValue.text = "X: \(loc.x) Y: \(loc.y)"
    }
    
    
    func slideActionLeft( _ sender:UIGestureRecognizer) {
        
        lblTitle.text = "Deslizar para Esquerda"
        
        let loc = sender.location(in: self.view)
        lblValue.text = "X: \(loc.x) Y: \(loc.y)"
    }
    
    func slideActionRight( _ sender:UIGestureRecognizer) {
        
        lblTitle.text = "Deslizar para Direita"
        
        let loc = sender.location(in: self.view)
        lblValue.text = "X: \(loc.x) Y: \(loc.y)"
    }
    
    func actionRotation( _ sender:UIRotationGestureRecognizer) {
        lblTitle.text = "Rotação"
        
//        let rot =  round(radParaGraus(rad: sender.rotation))
    
        let rot =  round(sender.rotation.paraGraus())

        let vel =  round(sender.velocity)
        
        lblValue.text = "R: \(rot) V: \(vel)"
    }
    
    
    func actionPinca( _ sender:UIPinchGestureRecognizer) {
        lblTitle.text = "Pinça"
        
    
        let sca =  round(sender.scale)
        let vel =  round(sender.velocity)
        
        lblValue.text = "S: \(sca) V: \(vel)"
    }
    
    func edgePanAction( _ sender:UIScreenEdgePanGestureRecognizer) {
        lblTitle.text = "Edge Pan"
        
        
//        let sca =  round(sender.scale)
//        let vel =  round(sender.velocity)
//        
//        lblValue.text = "S: \(sca) V: \(vel)"
    }
    
    func panAction( _ sender:UIPanGestureRecognizer) {
        lblTitle.text = "Pan"
        
        
        //        let sca =  round(sender.scale)
        //        let vel =  round(sender.velocity)
        //
        //        lblValue.text = "S: \(sca) V: \(vel)"
    }
    
    
    
    func radParaGraus(rad: CGFloat) -> CGFloat {
        
        return rad * 180 / CGFloat(M_PI)
        
    }


}

