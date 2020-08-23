//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adwait Barkale on 23/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    static var shared = CalculatorBrain()
    var bmi:BMI?
    
    mutating func calculateBMI(height: Float,weight: Float)
    {
        let bmiVal = weight/pow(height, 2)
        if bmiVal < 18.5{
            bmi = BMI(value: bmiVal, advice: "Eat More", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiVal > 18.5 && bmiVal < 24.9{
            bmi = BMI(value: bmiVal, advice: "You are FIT", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: bmiVal, advice: "Eat Less", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    
    func getCalculatedBMI() -> String
    {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String
    {
        return bmi?.advice ?? "No Advice Available"
    }
    
    func getColor() -> UIColor
    {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    
    
}
