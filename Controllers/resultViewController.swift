//
//  resultViewController.swift
//  BMI Calculator
//
//  Created by mazen moataz on 13/09/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    @IBOutlet var viewBackground: UIView!
    @IBOutlet weak var resultNum: UILabel!
    @IBOutlet weak var qoute: UILabel!
    var bmiValue : Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        if bmiValue >= 30.1{
            qoute.text = "YOU NEED TO EAT HEALTHY FOOD"
            viewBackground.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }else if bmiValue <= 19.9 {
            qoute.text = "EAT SOME MORE SNACKS"
            viewBackground.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        }else{
            qoute.text = "YOU ARE PERFECT!"
        }
        resultNum.text = String(format:"%.1f",bmiValue)
        
    }
    
    @IBAction func recalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
