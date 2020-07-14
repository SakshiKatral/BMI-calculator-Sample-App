//
//  BMI.swift
//  BMI Calculator App
//
//  Created by Mac on 12/07/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

struct BMI {
    let value : Float
    let advice : String
    let color : UIColor
    init(value: Float, advice: String, color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
