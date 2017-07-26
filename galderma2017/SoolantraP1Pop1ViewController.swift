//
//  SoolantraP1Pop1ViewController.swift
//  
//
//  Created by Francisco Barrios Romo on 22-05-17.
//
//

import UIKit
import Spring

class SoolantraP1Pop1ViewController: UIViewController {
    
    @IBOutlet var btnExit: UIButton!

    @IBOutlet var heroe: SpringImageView!
    
    @IBOutlet var villano: SpringImageView!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var click: SpringImageView!
    
    @IBOutlet var grafico: SpringImageView!
    
   
    
    
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

        grafico.opacity      = 0.0
        grafico.animation    = "fadeIn"
        grafico.curve        = "easeIn"
        grafico.delay        = 1.5
        grafico.duration     = 0.4
        grafico.animate()
    
        
        delay(delay:2.0){
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
