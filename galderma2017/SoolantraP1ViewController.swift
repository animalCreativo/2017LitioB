//
//  SoolantraP1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring


class SoolantraP1ViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var cuadro: SpringImageView!
    @IBOutlet var heroe: SpringImageView!
    @IBOutlet var villano: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    @IBOutlet var item5: SpringImageView!
    
    @IBOutlet var btnItem1: UIButton!
    @IBOutlet var btnItem2: UIButton!
    @IBOutlet var btnItem3: UIButton!
    @IBOutlet var btnItem4: UIButton!
    @IBOutlet var btnItem5: UIButton!
    
    @IBOutlet var btnItem1B: UIButton!
    @IBOutlet var btnItem2B: UIButton!
    @IBOutlet var btnItem3B: UIButton!
    @IBOutlet var btnItem4B: UIButton!
    @IBOutlet var btnItem5B: UIButton!
    
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    
    
    @IBAction func btnItem1B(_ sender: Any) {
        item1.opacity      = 0.0
        item1.animation    = "swing"
        item1.curve        = "easeIn"
        item1.delay        = 0.1
        item1.duration     = 0.4
        item1.animate()
    }
    @IBAction func btnItem2B(_ sender: Any) {
        item2.opacity      = 0.0
        item2.animation    = "swing"
        item2.curve        = "easeIn"
        item2.delay        = 0.1
        item2.duration     = 0.4
        item2.animate()
    }
    @IBAction func btnItem3B(_ sender: Any) {
        item3.opacity      = 0.0
        item3.animation    = "swing"
        item3.curve        = "easeIn"
        item3.delay        = 0.1
        item3.duration     = 0.4
        item3.animate()
    }
    @IBAction func btnItem4B(_ sender: Any) {
        item4.opacity      = 0.0
        item4.animation    = "swing"
        item4.curve        = "easeIn"
        item4.delay        = 0.1
        item4.duration     = 0.4
        item4.animate()
    }
    @IBAction func btnItem5B(_ sender: Any) {
        item5.opacity      = 0.0
        item5.animation    = "swing"
        item5.curve        = "easeIn"
        item5.delay        = 0.1
        item5.duration     = 0.4
        item5.animate()
    }
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
    
    func slide(){
        
        btnItem1.isHidden = true
        btnItem2.isHidden = true
        btnItem3.isHidden = true
        btnItem4.isHidden = true
        btnItem5.isHidden = true
        
        btnItem1B.isHidden = true
        btnItem2B.isHidden = true
        btnItem3B.isHidden = true
        btnItem4B.isHidden = true
        btnItem5B.isHidden = true
        
        btn2.isHidden = true
        btn3.isHidden = true
        btn4.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        heroe.opacity      = 0.0
        heroe.animation    = "slideDown"
        heroe.curve        = "easeIn"
        heroe.delay        = 0.4
        heroe.duration     = 0.5
        heroe.x 		   = 250
        heroe.y 		   = 0
        heroe.damping      = 1.0
        heroe.animate()

        villano.opacity      = 0.0
        villano.animation    = "slideRight"
        villano.curve        = "easeIn"
        villano.delay        = 0.7
        villano.duration     = 0.5
        villano.y 		     = 250
        villano.x 		     = 0
        villano.damping      = 1.0
        villano.animate()
        
        cuadro.opacity      = 0.0
        cuadro.animation    = "animalPop"
        cuadro.curve        = "easeIn"
        cuadro.delay        = 1.3
        cuadro.duration     = 0.4
        cuadro.animate()

        
        item1.opacity      = 0.0
        item1.animation    = "fadeIn"
        item1.curve        = "easeIn"
        item1.delay        = 1.6
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "fadeIn"
        item2.curve        = "easeIn"
        item2.delay        = 1.8
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "fadeIn"
        item3.curve        = "easeIn"
        item3.delay        = 2.0
        item3.duration     = 0.5
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "fadeIn"
        item4.curve        = "easeIn"
        item4.delay        = 2.2
        item4.duration     = 0.5
        item4.animate()
        
        item5.opacity      = 0.0
        item5.animation    = "fadeIn"
        item5.curve        = "easeIn"
        item5.delay        = 2.4
        item5.duration     = 0.5
        item5.animate()

        delay(delay:3.0){
            self.btnItem1.isHidden = false
            self.btnItem2.isHidden = false
            self.btnItem3.isHidden = false
            self.btnItem4.isHidden = false
            self.btnItem5.isHidden = false
            
            self.btnItem1B.isHidden = false
            self.btnItem2B.isHidden = false
            self.btnItem3B.isHidden = false
            self.btnItem4B.isHidden = false
            self.btnItem5B.isHidden = false
            
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
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
