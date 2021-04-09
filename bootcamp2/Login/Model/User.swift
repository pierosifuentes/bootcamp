//
//  User.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 8/4/21.
//

import Foundation

struct User {
    var id: String
    var name: String
    var imagePath: String
    var lastName: String {
        return String(name.split(separator: " ").last ?? "NO LASTNAME")
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case imagePath = "avatar"
    }
}

extension User: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id) ?? "NO ID"
        self.name = try container.decodeIfPresent(String.self, forKey: .name) ?? "NO NAME"
        self.imagePath = try container.decodeIfPresent(String.self, forKey: .imagePath) ?? "NO AVATAR"
    }
}
