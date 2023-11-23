//
//  Meal+CoreDataProperties.swift
//  MealRatingCoreData
//
//  Created by Angeline Flora John on 11/23/23.
//
//

import Foundation
import CoreData


extension Meal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Meal> {
        return NSFetchRequest<Meal>(entityName: "Meal")
    }

    @NSManaged public var meal: String?
    @NSManaged public var rating: String?
    @NSManaged public var restaurant: String?

}

extension Meal : Identifiable {

}
