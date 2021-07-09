//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    private let logic = BMILogic()
    
    private var calculatedBMI: String?
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let heightValue = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(heightValue)m"
    }
    

    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weightValue = String(format: "%.0f", sender.value)
        
        weightLabel.text = "\(weightValue)kg"
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        calculatedBMI = logic.calculateBMIinString(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationViewController = segue.destination as! SecondViewController
            destinationViewController.BMI = calculatedBMI
        }
    }
}


