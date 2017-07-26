//
//  Graficos2View.swift
//  
//
//  Created by Francisco Barrios Romo on 28-05-17.
//
//

import UIKit

class Graficos2View: UIView {
    private var aux: Float = 0.0
    
    var Valor: Float {
        
        set (newValor){
            if (newValor > 281) {
                aux = 328
            } else if (newValor < 0) {
                aux = 0
            }else {
                aux = newValor
            }
            setNeedsDisplay()
        }
        get {
            return aux
        }
        
    }
    
    
    override func draw(_ rect: CGRect) {
        porcentaje(x: Valor)
        self.backgroundColor = UIColor.red
        
    }
  
    func porcentaje(x:Float){
        let ftargetFrame = CGRect(x: 0, y: 0, width: 847, height: 476)
        
        let h1 = CGFloat(x)
        let h2 = CGFloat(x)
        
        //  Graficos.drawCanvas1(frame: ftargetFrame, resizing: .aspectFit, valueH1G1: h1, valueH2G1: h2)
        
        Graficos.drawCanvas2( frame:ftargetFrame, resizing:  .aspectFit, valueH1G2: h1, valueH2G2:h2)
        
        
    }
    
    
    
}