//
//  UserDetails+CoreDataProperties.swift
//  test
//
//  Created by Sophie Novak on 29/01/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//
//

import Foundation
import CoreData


extension UserDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserDetails> {
        return NSFetchRequest<UserDetails>(entityName: "UserDetails")
    }

    @NSManaged public var username: String?

}
