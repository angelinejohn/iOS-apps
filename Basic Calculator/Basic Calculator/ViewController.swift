//
//  ViewController.swift
//  Basic Calculator
//
//  Created by Angeline Flora John on 11/27/23.
//

import UIKit

class ViewController: UIViewController {
    //outlets and initializations
    @IBOutlet var firstNumber: UITextField!
    @IBOutlet var secondNumber: UITextField!
    @IBOutlet var answer: UILabel!
    private var numberOne: Int = 0
    private var numberTwo: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //convert the text from text field to numbers
        numberOne = (firstNumber.text! as NSString).integerValue
        numberTwo = (secondNumber.text! as NSString).integerValue
    }
    
    //all the button functions
    @IBAction func add(_ sender: Any) {
        let outputText: Float = processInput(numberOne: Int(numberOne), numberTwo: Int(numberTwo), performAction: "add")
        //set output
        answer.text = String(outputText)
    }
    
    @IBAction func subtract(_ sender: Any) {
    }
    
    @IBAction func multiply(_ sender: Any) {
    }
    
    @IBAction func divide(_ sender: Any) {
    }
}

extension ViewController {
    
    func processInput(numberOne: Int, numberTwo: Int, performAction: String) -> Float {
        var result: Float = 00.00
        switch performAction {
        case "add":
            result = Float(numberOne + numberTwo)
        case "subtract":
            result = Float(numberOne - numberTwo)
        case "multiply":
            result = Float(numberOne * numberTwo)
        case "divide":
            result = Float(numberOne / numberTwo)
        default:
            break
        }
        return result
    }
}

