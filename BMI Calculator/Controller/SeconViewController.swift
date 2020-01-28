//
//  SeconViewController.swift
//  BMI Calculator
//
//  Created by 🧔🏻Alikhan Batchaev on 28.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0:0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create shortcut through code
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
