//
//  LoginAPI.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 9/4/21.
//

import Foundation
import Alamofire

class LoginAPI {
    
    //username: encrypted string
    //password: encrypted string
    func login(username: String, password: String, completion: @escaping (_ response: Result<[User], Error>) -> Void) {
        
        AF.request("https://6070ced050aaea0017283f62.mockapi.io/bootcamp/login", method: .get).validate().responseDecodable(of: [UserImplementation].self, completionHandler: { response in
            if let error = response.error {
                completion(.failure(error))
            } else {
                let users = response.value ?? []
                completion(.success(users))
            }
        })
    }
    
}
