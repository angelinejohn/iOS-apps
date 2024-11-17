//
//  ViewController.swift
//  Basic Calculator
//
//  Created by ajohn on 11/27/23.
//

import UIKit

class ViewController: UIViewController {
    //outlets and initializations
    @IBOutlet var firstNumber: UITextField!
    @IBOutlet var secondNumber: UITextField!
    @IBOutlet var answer: UILabel!
    private var numberOne: Float = 0.0
    private var numberTwo: Float = 0.0
    private var numberFirst: String = ""
    private var numberSecond: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //all the button functions
    @IBAction func add(_ sender: Any) {
        fetchInput()
        let output: String = calculate(numberOne: numberOne, numberTwo: numberTwo, performAction: "add")
        displayOutput(outputText: output)
    }
    
    @IBAction func subtract(_ sender: Any) {
        fetchInput()
        let output: String = calculate(numberOne: numberOne, numberTwo: numberTwo, performAction: "subtract")
        displayOutput(outputText: output)
    }
    
    @IBAction func multiply(_ sender: Any) {
        fetchInput()
        let output: String = calculate(numberOne: numberOne, numberTwo: numberTwo, performAction: "multiply")
        displayOutput(outputText: output)
    }
    
    @IBAction func divide(_ sender: Any) {
        fetchInput()
        let output: String = calculate(numberOne: numberOne, numberTwo: numberTwo, performAction: "divide")
        displayOutput(outputText: output)
    }
}

extension ViewController {
    
    func fetchInput() {
        // fetch the user input
        numberFirst = firstNumber.text ?? ""
        numberSecond = secondNumber.text ?? ""
        // convert the text from text field to numbers
        numberOne = Float(numberFirst) ?? 0
        numberTwo = Float(numberSecond) ?? 0
    }
    
    func calculate(numberOne: Float, numberTwo: Float, performAction: String) -> String {
        let result: Float = switch performAction {
        case "add":
            Float(numberOne + numberTwo)
        case "subtract":
            Float(numberOne - numberTwo)
        case "multiply":
            Float(numberOne * numberTwo)
        case "divide":
            Float(numberOne / numberTwo)
        default:
            Float()
        }
        return String(format: "%.2f", result)
    }
    
    func displayOutput(outputText: String) {
        //set output
        answer.text = outputText
    }
}

