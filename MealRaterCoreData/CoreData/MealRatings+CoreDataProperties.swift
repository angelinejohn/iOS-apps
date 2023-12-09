//
//  MealRatings+CoreDataProperties.swift
//  MealRaterCoreData
//
//  Created by Angeline Flora John on 11/21/23.
//
//

import Foundation
import CoreData


extension MealRatings {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MealRatings> {
        return NSFetchRequest<MealRatings>(entityName: "MealRatings")
    }

    @NSManaged public var mID: UUID?
    @NSManaged public var meal: String?
    @NSManaged public var restaurant: String?
    @NSManaged public var rating: Int

}

extension MealRatings : Identifiable {

}
