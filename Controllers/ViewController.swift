//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calcBrain = CalcBrain()
    @IBOutlet weak var hSlider: UISlider!
    @IBOutlet weak var weight: UILabel!
    
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var wSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        hSlider.value = 1.77
        wSlider.value = 77
        weight.text = String("\(wSlider.value)Kg")
        height.text = String("\(hSlider.value)m")
    }

    @IBAction func hSliderAction(_ sender: UISlider) {
        let heightt = String(format: "%.2f" ,sender.value)
        height.text = "\(heightt)m"
    }
    
    @IBAction func wSliderAction(_ sender: UISlider) {
        let weightt = Int(sender.value)
        weight.text = "\(weightt)Kg"
    }
    @IBAction func btnPressed(_ sender: UIButton) {
       
        calcBrain.calcBmi(h: hSlider.value, w: wSlider.value)
        self.performSegue(withIdentifier: "goToResults", sender: self)
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let dest = segue.destination as! resultViewController
            dest.bmiValue = calcBrain.getBmi()
        }
    }
}

