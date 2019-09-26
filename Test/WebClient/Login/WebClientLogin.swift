//
//  WebClientLogin.swift
//  Anabuki
//
//  Created by Jamil on 18/6/19.
//  Copyright © 2019 Oceanize. All rights reserved.
//

import UIKit
import Alamofire

class WebClientLogin: NSObject {
    override init() { }
    public static let shared = WebClientLogin()
    //
    var qr_code: String = ""
    var auth_token: String = ""
    var user = User()
    
    //get parameter
    func getParam() -> Parameters {
        let param: Parameters = [
            APIKey.UserId: String(user.id),
            APIKey.AuthToken: self.auth_token,//"YWNiMjdjYTFhZDMxMzk4OGFlN2M2ZTE0Y2E5OGJkYzg="
        ]
        return param
    }
    
    func parseUserData(responseDic: [String:Any]) {
//        user.id       = responseDic[APIKey.Id]       as? Int ?? 0
//        user.room     = responseDic[APIKey.Room]     as? String ?? ""
//        user.status   = responseDic[APIKey.Status]   as? Int ?? 0
//        user.name     = responseDic[APIKey.Name]     as? String ?? ""
//        user.building = responseDic[APIKey.Building] as? String ?? ""
//        user.telephone = responseDic[APIKey.Tel] as? String ?? ""
        
//        if let _authToken = responseDic[APIKey.AuthToken] as? String {
//            Defaults.setAuthCode(autCode: _authToken)
//        }
//        user.saveUserDataToUserDefaults()
//        UserInfo.profile = user.getUserDataFromUserDefaults()
        
//        Log("user id:\(user.id)")
//        Log("user room:\(user.room)")
//        Log("user building:\(user.building)")
//        Log("user status:\(user.status)")
//        Log("user name:\(user.name)")
    }
}
