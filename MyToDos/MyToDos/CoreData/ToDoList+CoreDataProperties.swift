//
//  ToDoList+CoreDataProperties.swift
//  MyToDos
//
//  Created by Angeline Flora John on 11/30/23.
//
//

import Foundation
import CoreData


extension ToDoList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoList> {
        return NSFetchRequest<ToDoList>(entityName: "ToDoList")
    }

    @NSManaged public var tdID: UUID?
    @NSManaged public var task: String?
    @NSManaged public var priority: String?
    @NSManaged public var dueDate: Date?
    @NSManaged public var creationDate: Date?

}

extension ToDoList : Identifiable {

}
