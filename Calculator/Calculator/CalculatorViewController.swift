//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by ajohn on 12/2/23.
//

import UIKit

class CalculatorViewController: UIViewController {
    // initializations and outlets
    private var result: Double = 0
    @IBOutlet var calculatorDisplay: UILabel!
    var currentOperation: Operation = Operation.null
    var currentCalculatorState: CalculatorState = CalculatorState.inputMode
    var firstValue: String = Operation.null.rawValue
    var nextValue: String = Operation.null.rawValue
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // function for the numbers
    @IBAction func numberClicked(_ sender: UIButton) {
        updateDisplay(enteredValue: String(sender.tag))
    }

    // function for the operations
    @IBAction func performCalculation(_ sender: UIButton) {
        currentCalculatorState = CalculatorState.newInputMode
        if let number = calculatorDisplay.text {
            if number != Operation.null.rawValue {
                firstValue = number
                calculatorDisplay.text = Operation.null.rawValue
            }
        }
        
        switch sender.tag {
        case 11:
            currentOperation = Operation.addition
        case 12:
            currentOperation = Operation.subtraction
        case 13:
            currentOperation = Operation.multiplication
        case 14:
            currentOperation = Operation.division
        default:
            currentOperation = Operation.null
        }
    }
    
    @IBAction func displayResult(_ sender: UIButton) {
        // check if there is a first value
        if firstValue.isEmpty {
            return
        }
        
        switch currentOperation {
        case .addition:
            result = Double(firstValue)! + Double(calculatorDisplay.text!)!
        case .subtraction:
            result = Double(firstValue)! - Double(calculatorDisplay.text!)!
        case .multiplication:
            result = Double(firstValue)! * Double(calculatorDisplay.text!)!
        case .division:
            result = Double(firstValue)! / Double(calculatorDisplay.text!)!
        case .null:
            return
        }
        
        calculatorDisplay.text = String(result)
        currentCalculatorState = CalculatorState.newInputMode
    }
    
    // function to clear the last number from the display
    @IBAction func clearLastNumber(_ sender: UIButton) {
        var enteredVal = calculatorDisplay.text
        _ = enteredVal?.removeLast()
        calculatorDisplay.text = enteredVal
    }
    
    // function to clear all the numbers from the display
    @IBAction func clearAllNumbers(_ sender: UIButton) {
        calculatorDisplay.text = Operation.null.rawValue
    }
    
    // function to update the calculator display
    func updateDisplay(enteredValue: String) {
        if currentCalculatorState == CalculatorState.newInputMode {
            if let number = calculatorDisplay.text {
                if number != Operation.null.rawValue {
                    firstValue = enteredValue
                }
            }
            currentCalculatorState = CalculatorState.inputMode
            calculatorDisplay.text = enteredValue
        } else if currentCalculatorState == CalculatorState.inputMode {
            calculatorDisplay.text = (calculatorDisplay.text ?? "") + enteredValue
        }
    }
}
