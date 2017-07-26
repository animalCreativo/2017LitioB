//
//  SoolantraP2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class SoolantraP2ViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    

    @IBOutlet var texto: SpringImageView!
    
    @IBOutlet var producto1a: SpringImageView!
    @IBOutlet var producto1b: SpringImageView!
    @IBOutlet var producto2a: SpringImageView!
    @IBOutlet var producto2b: SpringImageView!
    
    @IBOutlet var producto1aa: SpringImageView!
    @IBOutlet var producto2bb: SpringImageView!
    @IBOutlet var btnItem1: UIButton!
    @IBOutlet var btnItem2: UIButton!
    @IBOutlet var btnItem3: UIButton!
    @IBOutlet var btnItem4: UIButton!
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!

    @IBOutlet var btn5: UIButton!
    @IBOutlet var sello: SpringImageView!
    
    var timer1: Timer!
    
    var posImg1 = CGPoint(x:0.0,y:0.0)
    var posImg2 = CGPoint(x:0.0,y:0.0)
    var tiempo = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
        posImg1 = producto1aa.frame.origin
        posImg2 = producto2bb.frame.origin
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        elefante()
        
    }
    func elefante(){
        var puntoFinalX : CGFloat = 0.0, puntoFinalY : CGFloat = 0.0, puntoInicialX : CGFloat = 0.0, puntoInicialY : CGFloat = 0.0, puntoControl1X : CGFloat = 0.0, puntoControl1Y : CGFloat = 0.0, puntoControl2X : CGFloat = 0.0, puntoControl2Y : CGFloat = 0.0
        
        
        puntoInicialX = posImg1.x + 300
        puntoInicialY = posImg1.y + 190
        puntoFinalX = posImg1.x + 122
        puntoFinalY = posImg1.y + 190
        
        puntoControl1X = posImg1.x + 200
        puntoControl1Y = posImg1.y + 190
        
        puntoControl2X = posImg1.x + 150
        puntoControl2Y = posImg1.y + 190
        
        tiempo = 2.5
        
        
        var path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        var anim = CAKeyframeAnimation(keyPath: "position")
        
        anim.path = path.cgPath
        
        anim.rotationMode = nil
        anim.repeatCount = 0.0
        anim.duration = tiempo
        
        producto1aa.layer.add(anim, forKey: "animate position along path")
        
        /*delay(delay: 2.3){
            self.img3.isHidden = true
        }*/
        
        puntoInicialX = posImg2.x - 200
        puntoInicialY = posImg2.y + 205
        puntoFinalX = posImg2.x + 85
        puntoFinalY = posImg2.y + 205
        
        puntoControl1X = posImg2.x - 100
        puntoControl1Y = posImg2.y + 205
        
        puntoControl2X = posImg2.x - 50
        puntoControl2Y = posImg2.y + 205
        
        tiempo = 2.5
        
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        anim = CAKeyframeAnimation(keyPath: "position")
        
        anim.path = path.cgPath
        
        anim.rotationMode = nil
        anim.repeatCount = 0.0
        anim.duration = tiempo
        
        producto2bb.layer.add(anim, forKey: "animate position along path")
    }
    func animation1() {
        producto1a.opacity      = 0.0
        producto1a.animation    = "flash"
        producto1a.curve        = "easeIn"
        producto1a.delay        = 0.0
        producto1a.duration     = 0.5
        producto1a.animate()
        
        producto2a.opacity      = 0.0
        producto2a.animation    = "flash"
        producto2a.curve        = "easeIn"
        producto2a.delay        = 0.0
        producto2a.duration     = 0.5
        producto2a.animate()
    }
    
    func slide(){
        
        btnItem1.isHidden = true
        btnItem2.isHidden = true
        btnItem3.isHidden = true
        btnItem4.isHidden = true
      
        btn1.isHidden = true
        btn3.isHidden = true
        btn4.isHidden = true
        btn5.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        


        producto1a.opacity      = 0.0
        producto1a.animation    = "flash"
        producto1a.curve        = "easeIn"
        producto1a.delay        = 2.0
        producto1a.duration     = 0.5
        producto1a.animate()
        
        producto1b.opacity      = 0.0
        producto1b.animation    = "fadeIn"
        producto1b.curve        = "easeIn"
        producto1b.delay        = 0.8
        producto1b.duration     = 0.5
        producto1b.animate()
        
        producto2a.opacity      = 0.0
        producto2a.animation    = "flash"
        producto2a.curve        = "easeIn"
        producto2a.delay        = 2.3
        producto2a.duration     = 0.5
        producto2a.animate()
        
        producto2b.opacity      = 0.0
        producto2b.animation    = "fadeIn"
        producto2b.curve        = "easeIn"
        producto2b.delay        = 1.5
        producto2b.duration     = 0.5
        producto2b.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 1.8
        texto.duration     = 0.4
        texto.animate()
    
        sello.opacity      = 0.0
        sello.animation    = "fadeIn"
        sello.curve        = "easeIn"
        sello.delay        = 2.0
        sello.duration     = 0.4
        sello.animate()
        
        
        delay(delay:2.2){
            self.btnItem1.isHidden = false
            self.btnItem2.isHidden = false
            self.btnItem3.isHidden = false
            self.btnItem4.isHidden = false
            
            self.btn1.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            self.btn5.isHidden = false
            
            self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)

        }
        
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

}
