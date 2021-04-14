//
//  UserViewModel.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 12/4/21.
//

import Foundation

struct UserViewModel {
    let id: String
    let fullName: String
}

extension UserViewModel {
    
    init(user: User) {
        self.id = user.id
        self.fullName = user.name + " " + user.lastName
    }
}
