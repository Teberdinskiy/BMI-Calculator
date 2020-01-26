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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = (String(format: "%.2f", sender.value))
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String((Int(sender.value)))
    }
}

