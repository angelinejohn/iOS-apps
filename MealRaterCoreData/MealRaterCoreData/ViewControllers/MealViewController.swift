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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mealRating.text = "Hello!"
    }
    

}
