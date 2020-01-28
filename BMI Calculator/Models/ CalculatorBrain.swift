//
//   CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 🧔🏻Alikhan Batchaev on 28.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        // BMI calculation = weight / height²
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        // "%.1f" - Sets the required number of decimal places
        let bmiTo1Decimal = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1Decimal
    }
}

