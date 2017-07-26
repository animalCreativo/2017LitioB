//
//  SoolantraP3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class SoolantraP3ViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var img3: SpringImageView!
    
    @IBOutlet weak var btnGo: UIButton!
    @IBOutlet var img: SpringImageView!
    
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var img4: SpringImageView!
 
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn4: UIButton!
    @IBOutlet var btn2: UIButton!
    
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

        btn2.isHidden = true
        btn4.isHidden = true
        btn1.isHidden = true
        
        btnGo.isHidden = true
   
        
        img.opacity      = 0.0
        img.animation    = "animalPop"
        img.curve        = "easeIn"
        img.delay        = 0.1
        img.duration     = 0.4
        img.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "zoomIn"
        img2.curve        = "easeIn"
        img2.delay        = 0.5
        img2.duration     = 0.4
        img2.animate()
        
        img4.opacity      = 0.0
        img4.animation    = "fadeIn"
        img4.curve        = "easeIn"
        img4.delay        = 0.9
        img4.duration     = 0.4
        img4.animate()
        
        img3.opacity      = 0.0
        img3.animation    = "fadeIn"
        img3.curve        = "easeIn"
        img3.delay        = 1.2
        img3.duration     = 0.4
        img3.animate()
        
        delay(delay:1.8){
            
            self.btn2.isHidden = false
            self.btn4.isHidden = false
            self.btn1.isHidden = false
            self.btnGo.isHidden = false
     
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
