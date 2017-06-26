//
//  TimeOfFlightViewController.swift
//  Physics Calculator
//
//  Created by Brandon Mayhew on 2017-05-01.
//  Copyright © 2017 MayU-Studios. All rights reserved.
//

import UIKit

class TimeOfFlightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationItem.title = "Time of Flight"
    }

    //Elements
        //Text Fields
    @IBOutlet weak var velocityTF: UITextField!
    @IBOutlet weak var degreesTF: UITextField!
        //Labels
    @IBOutlet weak var secondDisplayLabel: UILabel!
    @IBOutlet weak var secondDisclaimerLabel: UILabel!
    
    
    //Buttons
    @IBAction func calculateButton(_ sender: Any) {

        if(velocityTF.text == "" || degreesTF.text == ""){
            print("Text fields are empty")
            return
        }
        
        let velocity = Double(velocityTF.text!)
        let degrees = Double(degreesTF.text!)
        
        var sinDegrees = sin(degrees!)
        
        print("Sine Degrees = \(sinDegrees)")
        
        var beforeDividing = 2 * velocity! * sinDegrees
        
        var finalCalculation = beforeDividing / 9.81
        
        print("(2 * \(velocity!) * \(sinDegrees) ) / 9.81")
        
        print("Time = \(finalCalculation)")
        
        var displayTime = String(format:"%.2f" , finalCalculation)
        
        secondDisplayLabel.text = "\(displayTime)s"
        
    }
    
    


}

