//
//  User.swift
//  Example Project
//
//  Created by David Jennes on 18/02/2018.
//  Copyright © 2019 Appwise. All rights reserved.
//

import AppwiseCore
import CoreData

extension User {
	static var current: User? {
		return current(in: DB.shared.view)
	}

	static func current(in moc: NSManagedObjectContext) -> User? {
		guard let userID = Settings.shared.currentUserID else { return nil }
		return moc.object(with: userID) as? User
	}
}
