//
//  SoolantraP2A1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class SoolantraP2A1ViewController: UIViewController {

    @IBOutlet var Left: UISwipeGestureRecognizer!
    
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!

    @IBOutlet var img: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        btnExit.isHidden = true
        view.removeGestureRecognizer(Left)
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img.opacity      = 0.0
        img.animation    = "zoomIn"
        img.curve        = "easeIn"
        img.delay        = 0.4
        img.duration     = 0.5
        img.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "fadeIn"
        footer.curve        = "easeIn"
        footer.delay        = 1.0
        footer.duration     = 0.4
        footer.animate()
        
        
        delay(delay:1.5){
            self.btnExit.isHidden = false
            self.view.addGestureRecognizer(self.Left)
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
