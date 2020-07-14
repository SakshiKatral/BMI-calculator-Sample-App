//
//  ViewController.swift
//  BMI Calculator App
//
//  Created by Mac on 12/07/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var weightSlider : UISlider!
    @IBOutlet weak var heightSlider : UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmiCalculatorBrain = BmiCalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func weightHeightSliderChanged(_ sender: UISlider){
        if sender == heightSlider{
            heightLabel.text = String(format: "%.2f", sender.value)
        }
        else if sender == weightSlider{
            weightLabel.text = String(format: "%.0f", sender.value)
        }
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        bmiCalculatorBrain.calculateBmi(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiCalculatorBrain.getBMIValue()
            destinationVC.advice = bmiCalculatorBrain.getAdvice()
            destinationVC.color = bmiCalculatorBrain.getColor()
        
    }
    
}

}
