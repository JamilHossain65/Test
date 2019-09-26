//
//  User.swift
//  Anabuki
//
//  Created by Jamil on 11/7/19.
//  Copyright © 2019 Oceanize. All rights reserved.
//

import UIKit

class User: NSObject {
    var id      : Int  = 0
    var room    : String  = ""
    var status  : Int    = 0
    var name    : String = ""
    var building: String = ""
    var telephone: String = ""
    
    func saveUserDataToUserDefaults() {
        UserDefaults.standard.set(id, forKey: "ab_user_id")
        UserDefaults.standard.set(room, forKey: "ab_user_room")
        UserDefaults.standard.set(status, forKey: "ab_user_status")
        UserDefaults.standard.set(name, forKey: "ab_user_name")
        UserDefaults.standard.set(building, forKey: "ab_user_building")
        UserDefaults.standard.set(telephone, forKey: "ab_user_telephone")
    }
    
    func getUserDataFromUserDefaults() -> User {
        let user = User()
        user.id = UserDefaults.standard.value(forKey: "ab_user_id") as? Int ?? 0
        user.room = UserDefaults.standard.string(forKey: "ab_user_room") ?? ""
        user.status = UserDefaults.standard.value(forKey: "ab_user_status") as? Int ?? 0
        user.name = UserDefaults.standard.string(forKey: "ab_user_name") ?? ""
        user.building = UserDefaults.standard.string(forKey: "ab_user_building") ?? ""
        user.telephone = UserDefaults.standard.string(forKey: "ab_user_telephone") ?? ""
        return user
    }
}
