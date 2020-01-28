//
//  ViewController.swift
//  BMI Calculator
//
//  Created by 🧔🏻Alikhan Batchaev on 26.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        // "%.2f" - Sets the required number of decimal places
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
        
        // BMI calculation
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        // Initiates the segue with the specified identifier from the current view controller's storyboard file.
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // Switch to another screen if the identifier matches
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            
        }
    }
}

