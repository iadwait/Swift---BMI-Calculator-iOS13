//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Adwait Barkale on 23/08/2020.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    @IBOutlet weak var lblBmiValue: UILabel!
    @IBOutlet weak var lblAdvise: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblBmiValue.text = bmiValue

    }
    
    @IBAction func btnRecalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
