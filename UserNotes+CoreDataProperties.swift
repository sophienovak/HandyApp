//
//  UserNotes+CoreDataProperties.swift
//  test
//
//  Created by Sophie Novak on 01/02/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//
//

import Foundation
import CoreData


extension UserNotes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserNotes> {
        return NSFetchRequest<UserNotes>(entityName: "UserNotes")
    }

    @NSManaged public var notedate: NSDate?
    @NSManaged public var notetext: String?

}
