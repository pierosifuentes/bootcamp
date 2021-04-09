//
//  LoginModel.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 7/4/21.
//

import Foundation
import Alamofire

class LoginModel {
    
    var api: LoginAPI
    init(api: LoginAPI = LoginAPI()) {
        self.api = api
    }
    
    func login(username: String, password: String, completion: @escaping (_ response: Any?) -> Void) {
        //encrypt here
        api.login(username: username, password: password) { response in
            if let user = response {
                //
            } else {
                
            }
        }
    }
    
    
}
