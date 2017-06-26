//
//  maximumHeightViewController.swift
//  Physics Calculator
//
//  Created by Brandon Mayhew on 2017-06-25.
//  Copyright © 2017 MayU-Studios. All rights reserved.
//

import UIKit

class maximumHeightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationItem.title = "Maximum Height"
    }
    
    //Elements
        //Textfield
    @IBOutlet weak var velocityTF: UITextField!
    @IBOutlet weak var degreesTF: UITextField!
        //Label
    @IBOutlet weak var secondDisplayLabel: UILabel!
    @IBOutlet weak var secondDisclaimerLabel: UILabel!
    

    @IBAction func calculateBtn(_ sender: Any) {
        
        if(velocityTF.text == "" || degreesTF.text == ""){
            print("Missing data in a textfield")
            return
        }
        
        let velocity = Double(velocityTF.text!)
        let degrees = Double(degreesTF.text!)
        
        let velocityExp = pow(velocity!, 2)
        let sinDegrees = sin(degrees!)
        let sinDegreesSQRD = pow(sinDegrees, 2)
        
        
        var degreesAndVelocity = velocityExp * sinDegreesSQRD
        
        var finalAnswer = degreesAndVelocity / (2 * 9.81)
        
        
        print("Velocity^2 = \(velocityExp)      &   sinDegree = \(sinDegrees)    & SinDegreesSQRD = \(sinDegreesSQRD)")
        
        print("Max Height = \(finalAnswer)")
        
        //var displayTime = String(format:"%.2f" , finalCalculation)
        
        var displayMaxHeight = String(format: "%.2f", finalAnswer)
        
        secondDisplayLabel.text = "\(displayMaxHeight)m"
        
        
        
        
        
    }
    
    
    
    

}
