//
//  SoolantraP3A1CViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 01-06-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit

class SoolantraP3A1CViewController: UIViewController {
  
    @IBOutlet var Right: UISwipeGestureRecognizer!
    @IBOutlet var btnExit: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
       
        self.view.addGestureRecognizer(self.Right)
        self.view.addGestureRecognizer(self.Right)
        
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
