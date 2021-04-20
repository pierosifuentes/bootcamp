//
//  UserViewBuilder.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 16/4/21.
//

import Foundation

class UserViewBuilder {
    
    static func makeView(user: User) -> UserViewController? {
        let viewController = UserViewController(nibName: "UserViewController", bundle: .main)
        viewController.presenter = UserProfilePresenter(view: viewController, user: user)
        return viewController
    }
}
