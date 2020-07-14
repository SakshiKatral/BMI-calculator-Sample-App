//
//  ResultViewController.swift
//  BMI Calculator App
//
//  Created by Mac on 12/07/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    @IBAction func reCalculatePressed(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }

}
