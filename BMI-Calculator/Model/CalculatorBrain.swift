//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Mohamed Elkazzaz on 01/11/2021.
//

import UIKit

struct CalculatorBrain {
    var bmi: Bmi?
    
    
    func getBmiValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
           return bmiTo1DecimalPlace
       }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBmi(height: Float, weight: Float) {
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = Bmi(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = Bmi(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        }else {
            bmi = Bmi(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        }
    }
}

