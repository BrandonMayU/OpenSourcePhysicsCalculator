//
//  rangeViewController.swift
//  Physics Calculator
//
//  Created by Brandon Mayhew on 2017-06-26.
//  Copyright © 2017 MayU-Studios. All rights reserved.
//

import UIKit

class rangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationItem.title = "Range"
    }

    //Elements
        //Textfields
    @IBOutlet weak var velocityTF: UITextField!
    @IBOutlet weak var degreesTF: UITextField!
        //Label
    @IBOutlet weak var secondDisplayLabel: UILabel!
    @IBOutlet weak var secondDisclaimerLabel: UILabel!
    
    
    
    @IBAction func calculateButton(_ sender: Any) {
        
        if(velocityTF.text == "" || degreesTF.text == ""){
            print("Missing data in a textfield")
            return
        }
        
        
        let velocity = Double(velocityTF.text!)
        let degrees = Double(degreesTF.text!)
        
        let velocitySQRD = pow(velocity!, 2)
        let sinDegrees = sin(2*degrees!)
        
        let velocityTimesDegrees = velocitySQRD * sinDegrees
        
        let finalAnswer = velocityTimesDegrees / 9.81
        
        print("Final Answer (Range ) = \(finalAnswer)")
        
        var range = String(format: "%.2f", finalAnswer)
        
        secondDisplayLabel.text = "\(range)m"
        
        
    }

}
