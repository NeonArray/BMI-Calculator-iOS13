//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aaron Arney on 7/30/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let val = weight / pow(height, 2)
        
        if val < 18.5 {
            bmi = BMI(value: val, advice: "Eat more pies", color: .blue)
        } else if val < 24.9 {
            bmi = BMI(value: val, advice: "Fit as a fiddle", color: .green)
        } else {
            bmi = BMI(value: val, advice: "Eat less pies", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String? {
        return bmi?.advice
    }
    
    func getColor() -> UIColor? {
        return bmi?.color
    }
}
