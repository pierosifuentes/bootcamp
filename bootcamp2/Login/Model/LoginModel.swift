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
        api.login(username: username, password: password) { [weak self] response in
            switch response {
            case .success(let users):
                let newUsers = self?.makeUserViewModel(users: users)
                completion(.success(newUsers))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func makeUserViewModel(users: [User]) -> [UserViewModel] {
        var newUsers: [UserViewModel] = []
        users.forEach { user in
            newUsers.append(UserViewModel(user: user))
        }
        return newUsers
    }
    
    
}
