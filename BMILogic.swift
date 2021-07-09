//
//  BMILogic.swift
//  BMI Calculator
//
//  Created by Andrey Solera on 8/7/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct BMILogic {
    
    internal func calculateBMI(height: Float, weight: Float) -> Float {
        return (weight / pow(height, 2))
    }
    
    internal func calculateBMIinString(height: Float, weight: Float) -> String {
        let calculatedBMI = calculateBMI(height: height, weight: weight)
        
        return String(format: "%.1f", calculatedBMI)
    }
}
