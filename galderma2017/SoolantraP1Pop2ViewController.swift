//
//  SoolantraP1Pop2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class SoolantraP1Pop2ViewController: UIViewController {

    
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var click: SpringImageView!
    
    @IBOutlet var texto: SpringImageView!
    
    @IBOutlet var img: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        btnExit.isHidden = true
        
        img.opacity      = 0.0
        img.animation    = "fadeIn"
        img.curve        = "easeIn"
        img.delay        = 0.1
        img.duration     = 0.4
        img.animate()
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.5
        titulo.duration     = 0.5
        titulo.animate()
        
        click.opacity      = 0.0
        click.animation    = "animalPop"
        click.curve        = "easeIn"
        click.delay        = 0.7
        click.duration     = 0.5
        click.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "slideRight"
        texto.curve        = "easeIn"
        texto.damping      = 1.0
        texto.delay        = 1.2
        texto.duration     = 0.5
        texto.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "fadeIn"
        footer.curve        = "easeIn"
        footer.delay        = 1.5
        footer.duration     = 0.4
        footer.animate()

        delay(delay:1.9){
            self.btnExit.isHidden = false
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
