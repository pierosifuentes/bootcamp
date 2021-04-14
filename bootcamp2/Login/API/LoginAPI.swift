//
//  LoginAPI.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 9/4/21.
//

import Foundation
import Alamofire


class APIBuilder {
    
    static func makeRequest(urlPath: String, method: HTTPMethod = .get, headers: HTTPHeader? = nil, body: [String: Any]? = nil) -> DataRequest? {
        guard let url = URL(string: urlPath), let request = try? URLRequest(url: url, method: .get) else {
            return nil
        }
        return AF.request(request)
    }
}


class LoginAPI {
    
    //username: encrypted string
    //password: encrypted string
    func login(username: String, password: String, completion: @escaping (_ response: Result<[User], Error>) -> Void) {
        let request = APIBuilder.makeRequest(urlPath: "https://6070ced050aaea0017283f62.mockapi.io/bootcamp/login")
        request?.validate().responseDecodable(of: [User].self, completionHandler: { response in
            if let error = response.error {
                completion(.failure(error))
            } else {
                let users = response.value ?? []
                completion(.success(users))
            }
        })
    }
    
}

