//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 🧔🏻Alikhan Batchaev on 28.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Dismisses the view controller
        dismiss(animated: true, completion: nil)
    }
    
}
