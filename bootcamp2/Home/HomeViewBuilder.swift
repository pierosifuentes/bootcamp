//
//  HomeViewBuilder.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 12/4/21.
//

import UIKit

class HomeViewBuilder {
    
    static func makeView(users: [UserViewModel]?) -> HomeViewController? {
        let storyboard = UIStoryboard(name: "Home", bundle: .main)
        let viewcontroller = storyboard.instantiateViewController(identifier: "HomeViewController") as? HomeViewController
        viewcontroller?.users = users
        return viewcontroller
    }
}
