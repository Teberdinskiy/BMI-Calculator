//
//  ViewController.swift
//  BMI Calculator
//
//  Created by 🧔🏻Alikhan Batchaev on 26.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value)
        heightLabel.text! += "м"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value)
        weightLabel.text! += "кг"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = hightSlider.value
        let weight = weightSlider.value
        let bmi = Int(weight / pow(height, 2))
        
        print(bmi)
    }
    
}

