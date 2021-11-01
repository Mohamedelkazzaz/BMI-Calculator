//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var heightSli: UISlider!
    @IBOutlet weak var weightSli: UISlider!
    
    
    var calulatorBrain = CalculatorBrain()
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let myDouble = sender.value
        let doubleStr = String(format: "%.2f m", myDouble)
               
          heightLbl.text = "\(doubleStr)"
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        let currentValue = Int(sender.value)
               
        weightLbl.text = "\(currentValue) kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateBtn(_ sender: UIButton) {
        let height = heightSli.value
        let weight = weightSli.value
        
        calulatorBrain.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = calulatorBrain.getBmiValue()
            destinationVC.advice = calulatorBrain.getAdvice()
            destinationVC.color = calulatorBrain.getColor()
        }
    }

}
