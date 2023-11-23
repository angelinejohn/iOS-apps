//
//  MealsViewController.swift
//  MealRaterCoreData
//
//  Created by Angeline Flora John on 11/21/23.
//

import UIKit
import CoreData

class MealViewController: UIViewController {
    //outlets and initializations
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
    var selectedMealRating: MealRatings? = nil
    enum RateMealAs: String {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
    }
    var cornerRadius: CGFloat = 5
    var borderWidth: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        formatButtons() //display the rating buttons in a particular format
        if(selectedMealRating != nil) {
            restaurantName.text = selectedMealRating?.restaurant
            meal.text = selectedMealRating?.meal
            let selectedRating = selectedMealRating?.rating
            if  selectedRating == RateMealAs.one.rawValue {
                rateOneBtn.backgroundColor = .blue
            }else if selectedRating == RateMealAs.two.rawValue {
                rateTwoBtn.backgroundColor = .blue
            }else if selectedRating == RateMealAs.three.rawValue {
                rateThreeBtn.backgroundColor = .blue
            }else if selectedRating == RateMealAs.four.rawValue {
                rateFourBtn.backgroundColor = .blue
            }else if selectedRating == RateMealAs.five.rawValue {
                rateFiveBtn.backgroundColor = .blue
            }
            mealRating.text = selectedRating
        }
    }
    
    func formatButtons() {
        rateOneBtn.backgroundColor = .clear
        rateOneBtn.layer.cornerRadius = cornerRadius
        rateOneBtn.layer.borderWidth = borderWidth
        rateOneBtn.layer.borderColor = UIColor.blue.cgColor
        
        rateTwoBtn.backgroundColor = .clear
        rateTwoBtn.layer.cornerRadius = cornerRadius
        rateTwoBtn.layer.borderWidth = borderWidth
        rateTwoBtn.layer.borderColor = UIColor.blue.cgColor
        
        rateThreeBtn.backgroundColor = .clear
        rateThreeBtn.layer.cornerRadius = cornerRadius
        rateThreeBtn.layer.borderWidth = borderWidth
        rateThreeBtn.layer.borderColor = UIColor.blue.cgColor
        
        rateFourBtn.backgroundColor = .clear
        rateFourBtn.layer.cornerRadius = cornerRadius
        rateFourBtn.layer.borderWidth = borderWidth
        rateFourBtn.layer.borderColor = UIColor.blue.cgColor
        
        rateFiveBtn.backgroundColor = .clear
        rateFiveBtn.layer.cornerRadius = cornerRadius
        rateFiveBtn.layer.borderWidth = borderWidth
        rateFiveBtn.layer.borderColor = UIColor.blue.cgColor

    }
    
    @IBAction func setRateOne(_ sender: Any) {
        rateOneBtn.backgroundColor = .blue
        rateOneBtn.titleLabel?.textColor = .white
        rateTwoBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = RateMealAs.one.rawValue
    }
    
    @IBAction func setRateTwo(_ sender: Any) {  
        rateTwoBtn.backgroundColor = .blue
        rateTwoBtn.titleLabel?.textColor = .white
        rateOneBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = RateMealAs.two.rawValue
    }
    
    @IBAction func setRateThree(_ sender: Any) {
        rateThreeBtn.backgroundColor = .blue
        rateThreeBtn.titleLabel?.textColor = .white
        rateOneBtn.backgroundColor = .clear
        rateTwoBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = RateMealAs.three.rawValue
    }
    
    
    @IBAction func setRateFour(_ sender: Any) {
        rateFourBtn.backgroundColor = .blue
        rateFourBtn.titleLabel?.textColor = .white
        rateOneBtn.backgroundColor = .clear
        rateTwoBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = RateMealAs.four.rawValue
    }
    
    @IBAction func setRateFive(_ sender: Any) {
        rateFiveBtn.backgroundColor = .blue
        rateFiveBtn.titleLabel?.textColor = .white
        rateOneBtn.backgroundColor = .clear
        rateTwoBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        mealRating.text = RateMealAs.five.rawValue
    }
    
    @IBAction func cancel(_ sender: Any) {
        rateOneBtn.backgroundColor = .clear
        rateTwoBtn.backgroundColor = .clear
        rateThreeBtn.backgroundColor = .clear
        rateFourBtn.backgroundColor = .clear
        rateFiveBtn.backgroundColor = .clear
        mealRating.text = "Label" // clear the rating
        //go back to home screen
        _ = self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func saveMealRating(_ sender: Any) {
        //save the meal rating into CoreData
        //context
        //entity
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        
        if(selectedMealRating == nil) {
            let entity = NSEntityDescription.entity(forEntityName: "MealRatings", in: context)
            let newMeal = MealRatings(entity: entity!, insertInto: context)
            
            //set all the attributes of the MealRatings entity
            newMeal.mID = UUID()
            newMeal.meal = meal.text
            newMeal.restaurant = restaurantName.text
            newMeal.rating = mealRating.text
            
            //do try context.save()
            if context.hasChanges {
                do {
                    try context.save()
                    listOfMealRatings.append(newMeal)
                    //after saving navigate to root view controller
                    _ = self.navigationController?.popToRootViewController(animated: true)
                } catch {
                    print("Context save error and Error in saving data \(error)")
                }
            }
        } else {
            let request = NSFetchRequest<MealRatings>(entityName: "MealRatings")
            
            do {
                try listOfMealRatings = context.fetch(request)
                for m in listOfMealRatings {
                    if(m == selectedMealRating) {
                        m.meal = meal.text
                        m.restaurant = restaurantName.text
                        m.rating = mealRating.text
                        try context.save()
                        //after saving navigate to root view controller
                        _ = self.navigationController?.popToRootViewController(animated: true)
                    }
                }
            } catch {
                print(error)
            }
        }
        
        
    }
}
