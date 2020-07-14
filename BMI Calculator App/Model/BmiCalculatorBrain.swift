//
//  BmiCalculatorBrain.swift
//  BMI Calculator App
//
//  Created by Mac on 12/07/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

struct BmiCalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)


        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if  bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
            
        }
    }
    func getBMIValue() -> String {
        let bmiTo1DecimalPoint = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPoint
    }
    func getAdvice() -> String {
        let advice = bmi?.advice
        return advice ?? "No advice"
    }
    func getColor() -> UIColor {
        let color = bmi?.color
        return color ?? .white
    }
}
