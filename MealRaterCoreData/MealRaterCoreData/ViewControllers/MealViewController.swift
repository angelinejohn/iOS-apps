//
//  MealsViewController.swift
//  MealRaterCoreData
//
//  Created by Angeline Flora John on 11/21/23.
//

import UIKit

class MealViewController: UIViewController {

    @IBOutlet var restaurantName: UITextField!
    @IBOutlet var meal: UITextField!
    @IBOutlet var mealRating: UILabel!
    @IBOutlet var cancelBtn: UIButton!
    @IBOutlet var saveBtn: UIButton!
    @IBOutlet var rateOneBtn: UIButton!
    @IBOutlet var rateTwoBtn: UIButton!
    @IBOutlet var rateFourBtn: UIButton!
    @IBOutlet var rateFiveBtn: UIButton!
    @IBOutlet var rateThreeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        formatButtons() //display the rating buttons in a particular format
    }
    
    func formatButtons() {
        rateOneBtn.backgroundColor = .clear
        rateOneBtn.layer.cornerRadius = 5
        rateOneBtn.layer.borderWidth = 1
        rateOneBtn.layer.borderColor = UIColor.blue.cgColor
        
        rateTwoBtn.backgroundColor = .clear
        rateTwoBtn.layer.cornerRadius = 5
        rateTwoBtn.layer.borderWidth = 1
        rateTwoBtn.layer.borderColor = UIColor.blue.cgColor
        
        rateThreeBtn.backgroundColor = .clear
        rateThreeBtn.layer.cornerRadius = 5
        rateThreeBtn.layer.borderWidth = 1
        rateThreeBtn.layer.borderColor = UIColor.blue.cgColor
        
        rateFourBtn.backgroundColor = .clear
        rateFourBtn.layer.cornerRadius = 5
        rateFourBtn.layer.borderWidth = 1
        rateFourBtn.layer.borderColor = UIColor.blue.cgColor
        
        rateFiveBtn.backgroundColor = .clear
        rateFiveBtn.layer.cornerRadius = 5
        rateFiveBtn.layer.borderWidth = 1
        rateFiveBtn.layer.borderColor = UIColor.blue.cgColor

    }
    
    @IBAction func setRateOne(_ sender: Any) {
        rateOneBtn.backgroundColor = .blue
        rateOneBtn.titleLabel?.textColor = .white
        rateTwoBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = "1"
    }
    
    @IBAction func setRateTwo(_ sender: Any) {  
        rateTwoBtn.backgroundColor = .blue
        rateTwoBtn.titleLabel?.textColor = .white
        rateOneBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = "2"
    }
    
    @IBAction func setRateThree(_ sender: Any) {
        rateThreeBtn.backgroundColor = .blue
        rateThreeBtn.titleLabel?.textColor = .white
        rateOneBtn.backgroundColor = .clear
        rateTwoBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = "3"
    }
    
    
    @IBAction func setRateFour(_ sender: Any) {
        rateFourBtn.backgroundColor = .blue
        rateFourBtn.titleLabel?.textColor = .white
        rateOneBtn.backgroundColor = .clear
        rateTwoBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = "4"
    }
    
    @IBAction func setRateFive(_ sender: Any) {
        rateFiveBtn.backgroundColor = .blue
        rateFiveBtn.titleLabel?.textColor = .white
        rateOneBtn.backgroundColor = .clear
        rateTwoBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        mealRating.text = "5"
    }

}
