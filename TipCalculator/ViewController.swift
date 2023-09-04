//
//  ViewController.swift
//  TipCalculator
//
//  Created by Angeline Flora John on 9/3/23.
//

import UIKit

class ViewController: UIViewController {

    enum TipPercentages {
        case fifteenPercentTip
        case eighteenPercentTip
        case twentyPercentTip
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBAction func fifteenPercentBtn(_ sender: Any) {
        guard let enteredBillAmount = Double(inputTextField.text!) else {
            outputLabel.text = "Enter a valid bill amount to calculate tip!"
            return
        }
        calculateTip(billAmount: enteredBillAmount, percentage: .fifteenPercentTip)
    }
    @IBAction func eighteenPercentBtn(_ sender: Any) {
        guard let enteredBillAmount = Double(inputTextField.text!) else {
            outputLabel.text = "Enter a valid bill amount to calculate tip!"
            return
        }
        calculateTip(billAmount: enteredBillAmount, percentage: .eighteenPercentTip)
    }
    @IBAction func twentyPercentBtn(_ sender: Any) {
        guard let enteredBillAmount = Double(inputTextField.text!) else {
            outputLabel.text = "Enter a valid bill amount to calculate tip!"
            return
        }
        calculateTip(billAmount: enteredBillAmount, percentage: .twentyPercentTip)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calculateTip(billAmount: Double, percentage: TipPercentages) {
        var tipAmount: Double
        var totalAmount: Double
        var outputText: String
        
        //calculate the tip amount
        switch percentage {
        case .fifteenPercentTip:
            tipAmount = billAmount * 0.15
        case .eighteenPercentTip:
            tipAmount = billAmount * 0.18
        case .twentyPercentTip:
            tipAmount = billAmount * 0.20
        }
        
        //calculate the total amount
        totalAmount = tipAmount + billAmount
        
        //round off the amount
        tipAmount = round( tipAmount * 100 ) / 100.0
        totalAmount = round( totalAmount * 100 ) / 100.0
        outputText = "Tip Amount: $\(tipAmount) Total: $\(totalAmount)"
        outputLabel.text = outputText
    }
}
