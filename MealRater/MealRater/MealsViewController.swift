//
//  MealsViewController.swift
//  MealRater
//
//  Created by Angeline Flora John on 11/5/23.
//

import UIKit

class MealsViewController: UIViewController, MealRatingVCDelegate {
    func saveRating(mealRating: String) {
        //display the meal rating on the label
        dishRating.text = mealRating
    }
    
    @IBOutlet var restaurantName: UITextField!
    
    @IBOutlet var dishName: UITextField!
    
    @IBOutlet var dishRating: UILabel!
    
    @IBOutlet var rateMealBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func rateMeal(_ sender: UIButton) {
         //go to MealRatingViewController to rate the meal
        performSegue(withIdentifier: "ToMealRatingVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //get the saved meal rating back to the main view controller
        if(segue.identifier == "ToMealRatingVC"){
            let mvc = segue.destination as! MealRatingViewController
            mvc.mealRateDelegate = self
            mvc.mealRating = dishRating?.text ?? "no value"
        }
    }
    
}
