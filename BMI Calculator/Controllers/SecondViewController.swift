//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Andrey Solera on 8/7/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var BMIValue: UILabel!
    
    internal var BMI: String? // Should be initialized when creating this class
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BMIValue.text = BMI
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
