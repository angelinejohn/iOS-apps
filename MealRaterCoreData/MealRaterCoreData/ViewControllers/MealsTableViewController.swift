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

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet var table: UITableView!
    @IBOutlet var mealRating: UILabel!
    @IBOutlet var restaurantName: UILabel!
    @IBOutlet var mealName: UILabel!
    @IBOutlet var addNewMealRatingBtn: UIBarButtonItem!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Meal Ratings"
        table.delegate = self
        table.dataSource = self
        displayRatings()
        table.reloadData()
    }
    
    @IBAction func addNewMealRating(_ sender: Any) {
        //navigate to the MealViewController to add a meal rating
        performSegue(withIdentifier: "ToMealVC", sender: nil)
    }
}

extension MealsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfMealRatings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mealRatingCell = table.dequeueReusableCell(withIdentifier: "MealRatingCell", for: indexPath) as! MealRatingTableViewCell
        let currentMealRating = listOfMealRatings[indexPath.row]
        mealRatingCell.mealName.text = currentMealRating.meal
        mealRatingCell.mealRating.text = currentMealRating.rating
        
        return mealRatingCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "EditMealRating", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "EditMealRating") {
            let indexPath = table.indexPathForSelectedRow!
            let mvc = segue.destination as! MealViewController
            
            let selectedMealRating: MealRatings!
            selectedMealRating = listOfMealRatings[indexPath.row]
            mvc.selectedMealRating = selectedMealRating
            
            table.deselectRow(at: indexPath, animated: true)
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        table.reloadData()
    }
    
    func displayRatings() {
        let request = NSFetchRequest<MealRatings>(entityName: "MealRatings")
        
        do {
            try listOfMealRatings = context.fetch(request)
        } catch {
            print(error)
        }
    }
}
