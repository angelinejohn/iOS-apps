//
//  ViewController.swift
//  Convert Temperature
//
//  Created by Angeline Flora John on 12/1/23.
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
    }
    
    // function to convert temperature to Farenheit
    @IBAction func convertTemperatureToFarenheit(_ sender: Any) {
        // formula to convert Celcius to Farenheit
        // (0°C × 9/5) + 32
        if let temperatureEntered = temperatureInput.text {
            if(temperatureEntered == "") {
                temperatureOutput.text = ""
            } else {
                if let temperatureInCelcius = Double(temperatureEntered) {
                    let temperatureInFarenheit = temperatureInCelcius * (9/5) + 32
                    conversionCounter += 1
                    temperatureOutput.text = String(temperatureInFarenheit) + "F"
                    conversionCount.text = String(conversionCounter) + " conversions"
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
                temperatureOutput.text = ""
            } else {
                if let temperatureInFarenheit = Double(temperatureEntered) {
                    let temperatureInCelcius = (temperatureInFarenheit - 32) * (5/9)
                    conversionCounter += 1
                    temperatureOutput.text = String(temperatureInCelcius) + "C"
                    conversionCount.text = String(conversionCounter) + " conversions"
                }
            }
        }
    }    
}

