//
//  SoolantraHomeViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class SoolantraHomeViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var texto: SpringImageView!
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var heroe: SpringImageView!
    @IBOutlet var heroeGirl: SpringImageView!
    
    @IBOutlet var imgBtn1: SpringImageView!
    @IBOutlet var imgBtn2: SpringImageView!
    @IBOutlet var imgBtn3: SpringImageView!
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    
    var timer1: Timer!
    
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
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    func animation1() {
        titulo.opacity      = 0.0
        titulo.animation    = "swing"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 1.0
        titulo.animate()
    }
    func slide(){
        btn1.isHidden = true
        btn2.isHidden = true
        btn3.isHidden = true
        btn4.isHidden = true
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 0.1
        texto.duration     = 0.5
        texto.animate()
        
        heroe.opacity      = 0.0
        heroe.animation    = "squeezeUp"
        heroe.curve        = "easeIn"
        heroe.delay        = 0.4
        heroe.damping      = 1.0
        heroe.duration     = 0.6
        heroe.x 		   = 213.3
        heroe.y 		   = 125.0
        heroe.animate()
        
        heroeGirl.opacity      = 0.0
        heroeGirl.animation    = "fadeInRight"
        heroeGirl.curve        = "easeIn"
        heroeGirl.delay        = 1.0
        heroeGirl.duration     = 0.5
        heroeGirl.x 		   = 300
        heroeGirl.y 		   = 300
        heroeGirl.animate()
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 1.5
        titulo.duration     = 0.5
        titulo.animate()
        
 
        
        delay(delay:2.0){
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            
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
