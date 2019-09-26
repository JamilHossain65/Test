
//
//  WebApiRequest.swift
//  Anabuki
//
//  Created by Jamil on 18/6/19.
//  Copyright © 2019 Oceanize. All rights reserved.
//

import UIKit

import Alamofire

class WebApiRequest: NSObject {
    private override init() { }
    public static let shared = WebApiRequest()
    typealias completion = (_ success: Bool) -> Void
    typealias response = (_ response: [String:Any]?) -> Void

    func getHeader() -> HTTPHeaders? {
        var header: HTTPHeaders?
        let _authCode = "AnabukiAuthCode"//todo
        if true /*let _authCode = authCode*/{
            header = ["APIKey.Authorization": "bearer " + _authCode ]
        }
        return header
    }
    
    // Do request
    func doRequest(strURL: String,
                   method: HTTPMethod,
                   params: Parameters? = nil,
                   headers: HTTPHeaders? = nil,
                   completion: @escaping response) {
        print("URL:: \(strURL)")
        if let _headers = headers {
            print("HEADERS:: \(_headers)")
        }
        if let _params = params {
            print("PARAMS:: \(_params)")
        }
        
        if let url = URL(string: strURL) {
            Alamofire.request(url,
                              method: method,
                              parameters: params,
                              encoding: URLEncoding.default,
                              headers: headers).responseJSON() { response in
                guard response.result.error == nil else {
                    print("Error:: \(response.result.error!)")
                    return
                }
                if response.result.value != nil {
                    guard let response = response.result.value! as? [String:Any] else { return }
                    print("Response:: \(response)")
                    completion(response)
                } else { completion(nil) }
            }
        }
    }
}
