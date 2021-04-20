//
//  HomePresenter.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 14/4/21.
//

import Foundation

final class HomePresenter {
    
    private weak var view: HomeView?
    let users: [UserViewModel]?
    
    init(view: HomeView?, users: [UserViewModel]?) {
        self.view = view
        self.users = users
    }
    
    func onUserSelectedAt(_ index: Int) {
        guard let users = users, index < users.count, let user = users[index] as? User else {
            return
        }
        view?.showUserProfile(user)
        
    }
}


