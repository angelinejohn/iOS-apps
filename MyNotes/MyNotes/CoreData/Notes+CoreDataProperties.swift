//
//  Notes+CoreDataProperties.swift
//  MyNotes
//
//  Created by Angeline Flora John on 11/23/23.
//
//

import Foundation
import CoreData


extension Notes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notes> {
        return NSFetchRequest<Notes>(entityName: "Notes")
    }

    @NSManaged public var noteID: UUID?
    @NSManaged public var title: String?
    @NSManaged public var note: String?

}

extension Notes : Identifiable {

}
