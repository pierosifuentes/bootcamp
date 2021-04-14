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
    
    func login(username: String, password: String, completion: @escaping (_ response: Result<[UserViewModel]?, Error>?) -> Void) {
        //encrypt here
        api.login(username: username, password: password) { response in
            switch response {
            case .success(let users):
                BootcampSession.shared.appendUsers(users: users)
                completion(.success(users))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    
}
