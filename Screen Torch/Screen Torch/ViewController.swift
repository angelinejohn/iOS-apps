//
//  ViewController.swift
//  Screen Torch
//
//  Created by Angeline Flora John on 12/1/23.
//

import UIKit

class ViewController: UIViewController {

    var isBgColorRed: Bool = true
    var currentBackgroundColor = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
    }

    // function to alternate the background color between blue and red
    @IBAction func changeTorchColor(_ sender: Any) {
        if(isBgColorRed) {
            self.view.backgroundColor = UIColor.systemBlue
        } else {
            self.view.backgroundColor = UIColor.red
        }
        isBgColorRed = !isBgColorRed
    }
    
    @IBAction func randomTorchColor(_ sender: Any) {
        let redColor = CGFloat.random(in: 0...1)
        let blueColor = CGFloat.random(in: 0...1)
        let greenColor = CGFloat.random(in: 0...1)
        let alpha = CGFloat.pi
        let randomColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: alpha)
        
        print("RGB values: \(redColor), \(greenColor), \(blueColor)")
        print("random color: \(randomColor)")
        
        // set the background color to the view
        self.view.backgroundColor = randomColor
    }
}

