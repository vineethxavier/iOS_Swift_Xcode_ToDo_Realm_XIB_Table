//
//  SaveFile.swift
//  ToDoWithRealmGit
//
//  Created by Vineeth Xavier on 11/24/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import Foundation
import RealmSwift
class Items: Object {
    @objc dynamic var itemNameObj = ""
    @objc dynamic var itemCountObj = ""
}
