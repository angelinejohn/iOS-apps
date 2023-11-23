//
//  MealsViewController.swift
//  MealRater
//
//  Created by Angeline Flora John on 11/5/23.
//

import UIKit
import CoreData

public var listOfMealRatings = [Meal]()
class MealsViewController: UIViewController, MealRatingVCDelegate {
    func saveRating(mealRating: String, dishName: String, restaurantName: String) {
        //display the meal rating on the label
        if mealRating.isEmpty {
            dishRating.text = "Label"
        } else {
            dishRating.text = mealRating
        }
    }
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    @IBOutlet var restaurantName: UITextField!
    
    @IBOutlet var dishName: UITextField!
    
    @IBOutlet var dishRating: UILabel!
    
    @IBOutlet var rateMealBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Meal Rating"
        loadMealRating()
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
            mvc.mealName = dishName?.text ?? "no value"
            mvc.restaurantName = restaurantName?.text ?? "no value"
        }
    }
    
    func loadMealRating() {
        //fetch the meal rating from CoreData
        let request = NSFetchRequest<Meal>(entityName: "Meal")
        
        do {
            try listOfMealRatings = context.fetch(request)
            restaurantName.text = listOfMealRatings.last?.restaurant
            dishName.text = listOfMealRatings.last?.meal
            dishRating.text = listOfMealRatings.last?.rating
            
        } catch {
            print("\(error) in fetching core data!")
        }
    }
    
}

