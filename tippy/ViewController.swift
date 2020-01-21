//
//  ViewController.swift
//  tippy
//
//  Created by Eduardo Garcia on 1/17/20.
//  Copyright © 2020 Eduardo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalHeadingLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    @IBAction func calcuateTip(_ sender: Any) {
        
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        
        //Calcute the tip and total
        
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        if total > 100 {
            totalLabel.font = totalLabel.font.withSize(48)
                totalLabel.textColor = UIColor.red
             totalLabel.text = String(format: "$%.2f!", total)
        } else {
            totalLabel.font = totalLabel.font.withSize(24)
            totalLabel.textColor = UIColor.black
        }
        
    }
    
//    @IBAction func buttonClicked(_ sender: UIButton) {
//        totalLabel.textColor = UIColor.red
//        tipLabel.textColor = UIColor.red
//        billAmountLabel.textColor = UIColor.red
//        clickHere.setTitle("Clicked", for: .normal)
//        totalHeadingLabel.textColor = UIColor.red
//
//        totalLabel.textColor = UIColor.red
//        tipLabel.font = UIFont(name: "Arial", size: tipLabel.font.pointSize)
//        billAmountLabel.textColor = UIColor.red
//
//
//    }
}
