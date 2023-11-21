//
//  MealsTableViewController.swift
//  MealRaterCoreData
//
//  Created by Angeline Flora John on 11/21/23.
//

import UIKit
import CoreData

public var listOfMealRatings = [MealRatings]()
class MealsTableViewController: UIViewController {

    @IBOutlet var addNewMealRatingBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Meal Ratings"
    }
    
    @IBAction func addNewMealRating(_ sender: Any) {
        //navigate to the MealViewController to add a meal rating
        performSegue(withIdentifier: "ToMealVC", sender: nil)
    }
}

extension MealsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let mealRatingCell = tableView.dequeueReusableCell(withIdentifier: "MealRatingCell") else {
            return UITableViewCell()
        } //for efficient use of memory
//        let currentMealRating = listOfMealRatings[indexPath.row] //which row should be selected
        
        
        return mealRatingCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToMealVC", sender: nil)
    }
}
