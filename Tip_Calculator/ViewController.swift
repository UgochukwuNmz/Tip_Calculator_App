//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by Emmanuel Ihim on 12/23/20.
//

import UIKit

class ViewController: UIViewController {
    
    var value: Float = 0.2
    @IBOutlet var tipPercent: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var total: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        value = round(sender.value * 100) / 100
        tipPercent.text = String(format: "%.0f", round(sender.value * 100)) + "%"
    }
    
    @IBAction func calculateTIp(_ sender: Any) {
        // Get the bill amount
        let bill = Float(billField.text!) ?? 0
        
        let tip = round(bill * value)
        let tempTotal = bill + tip

        // Update the tip and total labels
        total.text = String(format: "$%.2f", tempTotal)
    }
    
}

