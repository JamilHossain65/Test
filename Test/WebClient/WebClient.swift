//
//  WebClient.swift
//  CraftBeer
//
//  Created by Jamil on 1/9/18.
//  Copyright © 2018 Jamil. All rights reserved.
//

import UIKit

//api response
 let KEY_SUCCESS = "msg"
 let KEY_RESPOND = "RESPONSE"
 let KEY_ERROR_FLAG = "error_flag"

//constant
//&list=search&srsearch=Nelson%20Mandela&format=json
let KEY_QUERY = "query"
let KEY_SEARCH = "search"
let KEY_JSON = "json"

class WebClient: NSObject {
    //https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch=Nelson%20Mandela&utf8=&format=json
    //static let baseUrl:String = "https://en.wikipedia.org/w" //
    static let api_search:String = baseUrl + "/api.php?"
    
    //login
    static let baseUrl: String   = "http://bd26.ocdev.me" //"http://54.65.92.133"
    static let api_login: String = baseUrl + "/api/app/users/login/"
    static let api_auth: String  = baseUrl + "/api/app/users/login/auth/"
    static let api_register: String  = baseUrl + "/api/app/users"
}

// MARK: - API KEY
struct APIKey {
    // A
    static let AuthToken = "auth_token"
    static let Authorization = "Authorization"

    // S
    static let Status = "status"
    static let Success    = "success"
 
    // U
    static let User       = "user"
    static let UserId       = "user_id"
    
}
