//
//  MealRatingViewController.swift
//  MealRater
//
//  Created by ajohn on 11/5/23.
//

import UIKit

protocol MealRatingVCDelegate : NSObjectProtocol{
    func saveRating(mealRating: String)
}

class MealRatingViewController: UIViewController {
    //outlets and initializations
    @IBOutlet var cancelBtn: UIButton!
    
    @IBOutlet var saveBtn: UIButton!
    
    @IBOutlet var rateOne: UIButton!
    
    @IBOutlet var rateTwo: UIButton!
    
    @IBOutlet var rateThree: UIButton!
    
    @IBOutlet var rateFour: UIButton!
    
    @IBOutlet var rateFive: UIButton!
    
    enum RateAs: String {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
    }
    var mealRating: String? = nil //rating that is passed on from the home page
    var mealRateDelegate: MealRatingVCDelegate? //rating selected and saved
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        formatButtons() //display the rating buttons in a particular format
        if  mealRating == RateAs.one.rawValue {
            rateOne.backgroundColor = .blue
        }else if mealRating == RateAs.two.rawValue {
            rateTwo.backgroundColor = .blue
        }else if mealRating == RateAs.three.rawValue {
            rateThree.backgroundColor = .blue
        }else if mealRating == RateAs.four.rawValue {
            rateFour.backgroundColor = .blue
        }else if mealRating == RateAs.five.rawValue {
            rateFive.backgroundColor = .blue
        }
    }
    
    func formatButtons() {
        rateOne.backgroundColor = .clear
        rateOne.layer.cornerRadius = 5
        rateOne.layer.borderWidth = 1
        rateOne.layer.borderColor = UIColor.blue.cgColor
        
        rateTwo.backgroundColor = .clear
        rateTwo.layer.cornerRadius = 5
        rateTwo.layer.borderWidth = 1
        rateTwo.layer.borderColor = UIColor.blue.cgColor
        
        rateThree.backgroundColor = .clear
        rateThree.layer.cornerRadius = 5
        rateThree.layer.borderWidth = 1
        rateThree.layer.borderColor = UIColor.blue.cgColor
        
        rateFour.backgroundColor = .clear
        rateFour.layer.cornerRadius = 5
        rateFour.layer.borderWidth = 1
        rateFour.layer.borderColor = UIColor.blue.cgColor
        
        rateFive.backgroundColor = .clear
        rateFive.layer.cornerRadius = 5
        rateFive.layer.borderWidth = 1
        rateFive.layer.borderColor = UIColor.blue.cgColor

    }
    
    
    @IBAction func rateOneBtn(_ sender: Any) {
        rateOne.backgroundColor = .blue
        rateOne.titleLabel?.textColor = .white
        rateTwo.backgroundColor = .clear
        rateThree.backgroundColor = .clear
        rateFour.backgroundColor = .clear
        rateFive.backgroundColor = .clear
        mealRating = RateAs.one.rawValue
    }
    
    @IBAction func rateTwoBtn(_ sender: Any) {
        rateTwo.backgroundColor = .blue
        rateTwo.titleLabel?.textColor = .white
        rateOne.backgroundColor = .clear
        rateThree.backgroundColor = .clear
        rateFour.backgroundColor = .clear
        rateFive.backgroundColor = .clear
        mealRating = RateAs.two.rawValue
    }
    
    @IBAction func rateThreeBtn(_ sender: Any) {
        rateThree.backgroundColor = .blue
        rateThree.titleLabel?.textColor = .white
        rateOne.backgroundColor = .clear
        rateTwo.backgroundColor = .clear
        rateFour.backgroundColor = .clear
        rateFive.backgroundColor = .clear
        mealRating = RateAs.three.rawValue
    }
    
    @IBAction func rateFourBtn(_ sender: Any) {
        rateFour.backgroundColor = .blue
        rateFour.titleLabel?.textColor = .white
        rateOne.backgroundColor = .clear
        rateTwo.backgroundColor = .clear
        rateThree.backgroundColor = .clear
        rateFive.backgroundColor = .clear
        mealRating = RateAs.four.rawValue
    }
    
    @IBAction func rateFiveBtn(_ sender: Any) {
        rateFive.backgroundColor = .blue
        rateFive.titleLabel?.textColor = .white
        rateOne.backgroundColor = .clear
        rateTwo.backgroundColor = .clear
        rateThree.backgroundColor = .clear
        rateFour.backgroundColor = .clear
        mealRating = RateAs.five.rawValue
    }
    
    
    @IBAction func cancelRating(_ sender: Any) {
        rateOne.backgroundColor = .clear
        rateTwo.backgroundColor = .clear
        rateThree.backgroundColor = .clear
        rateFour.backgroundColor = .clear
        rateFive.backgroundColor = .clear
        mealRating = nil
        mealRateDelegate?.saveRating(mealRating: mealRating ?? "")
        //go back to home screen
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func saveRating(_ sender: Any) {
        mealRateDelegate?.saveRating(mealRating: mealRating ?? "")
        //go back to home screen
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
