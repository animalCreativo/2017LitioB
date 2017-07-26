//
//  SoolantraP1Pop4ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class SoolantraP1Pop4ViewController: UIViewController {
    
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var click: SpringImageView!

    @IBOutlet var heroe: SpringImageView!
    @IBOutlet var villano: SpringImageView!
    @IBOutlet var mapa: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        btnExit.isHidden = true
        
        heroe.opacity      = 0.0
        heroe.animation    = "slideDown"
        heroe.curve        = "easeIn"
        heroe.delay        = 0.1
        heroe.duration     = 0.5
        heroe.x 		   = 250
        heroe.y 		   = 0
        heroe.damping      = 1.0
        heroe.animate()
        
        villano.opacity      = 0.0
        villano.animation    = "slideRight"
        villano.curve        = "easeIn"
        villano.delay        = 0.4
        villano.duration     = 0.5
        villano.y 		     = 250
        villano.x 		     = 0
        villano.damping      = 1.0
        villano.animate()
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 1.0
        titulo.duration     = 0.5
        titulo.animate()
        
        click.opacity      = 0.0
        click.animation    = "animalPop"
        click.curve        = "easeIn"
        click.delay        = 1.3
        click.duration     = 0.5
        click.animate()
        
        mapa.opacity      = 0.0
        mapa.animation    = "slideUp"
        mapa.curve        = "easeIn"
        mapa.delay        = 1.5
        mapa.duration     = 0.4
        mapa.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "slideUp"
        footer.curve        = "easeIn"
        footer.delay        = 1.9
        footer.duration     = 0.4
        footer.animate()
        
        
        
        delay(delay:2.5){
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
