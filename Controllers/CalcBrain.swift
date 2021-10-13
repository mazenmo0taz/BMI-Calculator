//
//  CalcBrain.swift
//  BMI Calculator
//
//  Created by mazen moataz on 13/09/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalcBrain{
    var bmi : Float = 1
    func getBmi() -> Float {
        return bmi
    }
    mutating func calcBmi(h:Float,w:Float){
        bmi = w/pow(h, 2)
    }
}
