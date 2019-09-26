//
//  WebApiAuthenticationRequest.swift
//  Anabuki-Pro
//
//  Created by Jannatul Abeda on 2019/07/25.
//  Copyright © 2019 Oceanize. All rights reserved.
//

import UIKit
import Alamofire

extension WebApiRequest {
    // Do login request
    func doLoginRequest(user_id: String,
                        completion: @escaping completion) {
        let webClient      = WebClientLogin.shared
        let urlStr = WebClient.api_login + user_id
        
        doRequest(strURL: urlStr,
                  method: .get) { response in
                    if response != nil {
                        guard let result = response else { return }
                        let success = result[APIKey.Success] as? Bool ?? false
                        if success == true { // Success
                            webClient.auth_token = result[APIKey.AuthToken] as? String ?? ""
                            var data = result[APIKey.User] as! [String:Any]
                            data[APIKey.AuthToken] = webClient.auth_token
                            webClient.parseUserData(responseDic: data)
                            completion(true)
                        } else {
                            completion(false)
                        }
                    }
        }
    }
    
    // Do user register request
    func doUserRegisterRequest(params: Parameters?,
                               completion: @escaping completion) {
        let urlStr = WebClient.api_register
        doRequest(strURL: urlStr,
                  method: .post,
                  params: params) { response in
                    if response != nil {
                        guard let result = response else { return }
                        let success = result[APIKey.Success] as? Bool ?? false
                        if success == true { // Success
                            completion(true)
                        } else {
                            completion(false)
                        }
                    }
        }
    }
    
    // Do authentication request
    func doAuthRequest(authToken: String,
                       completion: @escaping completion) {
        let urlStr = WebClient.api_auth + authToken
        doRequest(strURL: urlStr,
                  method: .get) { response in
                    if response != nil {
                        guard let result = response else { return }
                        let success = result[APIKey.Success] as? Bool ?? false
                        if success == true { // Success
                            completion(true)
                        } else {
                            completion(false)
                        }
                    }
        }
    }
}
