//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Adwait Barkale on 23/08/2020.
//  Copyright © 2019 Adwait Barkale. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weigthSlider: UISlider!
    
    //var BMI:Float!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   

    @IBAction func heightSlider(_ sender: UISlider) {
        let converted = String(format: "%.2f", sender.value)
        lblHeight.text = "\(converted)m"
        print(String(format: "%.2f", sender.value))
    }
      
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let converted = String(format: "%.0f", sender.value)
        lblWeight.text = "\(converted)kg"
        print(String(format: "%.0f", sender.value)) //Int(sender.value)
    }
    
    @IBAction func btnCalculateTapped(_ sender: UIButton) {
        
        let heightValue = heightSlider.value
        let weightValue = weigthSlider.value
        
        CalculatorBrain.shared.calculateBMI(height: heightValue, weight: weightValue)
        //BMI = weightValue/pow(heightValue, 2)
        //print(BMI!)
       // let resultVC = ResultViewController()
       // resultVC = storyboard?.instantiateViewController(identifier: "ResultViewController") as! ResultViewController
       // resultVC.bmiValue = String(format: "%.2f", BMI)
       // navigationController?.pushViewController(resultVC, animated: true)
        performSegue(withIdentifier: "showResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = CalculatorBrain.shared.getCalculatedBMI()
        }
    }
    
}

