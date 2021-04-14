//
//  User.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 8/4/21.
//

import Foundation

protocol User: UserViewModel {
    var id: String { get }
    var name: String { get }
    var imagePath: String { get }
    var lastName: String { get }
    func validate() -> Bool
}

extension User {
    
    var fullname: String {
        return name + " " + lastName
    }
    
    func validate() -> Bool {
        return id == "1"
    }
}

struct UserImplementation: User {
    let id: String
    let name: String
    let imagePath: String
    var lastName: String {
        return String(name.split(separator: " ").last ?? "NO LASTNAME")
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case imagePath = "avatar"
    }
}

extension UserImplementation: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id) ?? "NO ID"
        self.name = try container.decodeIfPresent(String.self, forKey: .name) ?? "NO NAME"
        self.imagePath = try container.decodeIfPresent(String.self, forKey: .imagePath) ?? "NO AVATAR"
    }
}
