//
//  UserProfilePresenter.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 16/4/21.
//

import Foundation

class UserProfilePresenter {
    
    private weak var view: UserProfileView?
    let user: User?
    
    init(view: UserProfileView?, user: User?) {
        self.view = view
        self.user = user
    }
    
    func showUserImage() {
        view?.setupImage(url: user?.imagePath)
    }
}
