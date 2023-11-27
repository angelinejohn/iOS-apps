//
//  ViewController.swift
//  Hello World!
//
//  Created by Angeline Flora John on 11/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var tapBtn: UIButton!
    @IBOutlet var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapButtonAction(_ sender: Any) {
        let inputText = userName.text ?? "no value"
        var outputText: String
        if inputText.isEmpty {
            outputText = "Hello World!"
        } else {
            outputText = "Hello " + inputText + "!"
        }
        outputLabel.text = outputText
    }
}

