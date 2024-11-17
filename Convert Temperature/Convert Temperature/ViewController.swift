//
//  ViewController.swift
//  Convert Temperature
//
//  Created by ajohn on 12/1/23.
//

import UIKit

class ViewController: UIViewController {
    // initializations and outlets
    @IBOutlet var temperatureInput: UITextField!
    @IBOutlet var temperatureOutput: UILabel!
    @IBOutlet var conversionCount: UILabel!
    var conversionCounter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        conversionCount.text = "0 conversions"
        temperatureInput.becomeFirstResponder()
    }
    
    // function to show the number pad keyboard
    @IBAction func onClick(_ sender: Any) {
        temperatureInput.keyboardType = UIKeyboardType.numberPad
        temperatureInput.keyboardAppearance = UIKeyboardAppearance.default
    }
    
    // function to convert temperature to Farenheit
    @IBAction func convertTemperatureToFarenheit(_ sender: Any) {
        // formula to convert Celcius to Farenheit
        // (0°C × 9/5) + 32
        if let temperatureEntered = temperatureInput.text {
            if(temperatureEntered == "") {
                displayOutput(temperature: String(), unit: String(), count: 0)
            } else {
                if let temperatureInCelcius = Double(temperatureEntered) {
                    let temperatureInFarenheit = temperatureInCelcius * (9/5) + 32
                    conversionCounter += 1
                    displayOutput(temperature: String(temperatureInFarenheit), unit: "F", count: conversionCounter)
                }
            }
        }
    }
    
    // function to convert temperature to Celcius
    @IBAction func convertTemperatureToCelcius(_ sender: Any) {
        // formula to convert Farenheit to Celcius
        // (0°F − 32) × 5/9
        if let temperatureEntered = temperatureInput.text {
            if(temperatureEntered == "") {
                displayOutput(temperature: String(), unit: String(), count: 0)
            } else {
                if let temperatureInFarenheit = Double(temperatureEntered) {
                    let temperatureInCelcius = (temperatureInFarenheit - 32) * (5/9)
                    conversionCounter += 1
                    displayOutput(temperature: String(temperatureInCelcius), unit: "C", count: conversionCounter)
                }
            }
        }
    }
    
    // function to display the output
    func displayOutput(temperature: String, unit: String, count: Int) {
        temperatureOutput.text = temperature + unit
        conversionCount.text = String(conversionCounter) + " conversions"
    }
}

