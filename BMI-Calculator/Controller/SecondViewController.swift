//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Mohamed Elkazzaz on 13/06/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var textLbl: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLbl.text = bmiValue
        textLbl.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
