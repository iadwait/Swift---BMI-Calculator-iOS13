//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adwait Barkale on 23/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    static var shared = CalculatorBrain()
    var BMI:Float?
    
    mutating func calculateBMI(height: Float,weight: Float)
    {
       BMI = weight/pow(height, 2)
    }
    
    func getCalculatedBMI() -> String
    {
        return String(format: "%.2f", BMI ?? 0.0)
    }
    
    
}
