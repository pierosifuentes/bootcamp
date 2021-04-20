//
//  HomeViewBuilder.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 12/4/21.
//

import UIKit

class HomeViewBuilder {
    
    static func makeView(users: [UserViewModel]?) -> UINavigationController? {
        let storyboard = UIStoryboard(name: "Home", bundle: .main)
        let viewcontroller = storyboard.instantiateViewController(identifier: "HomeViewController") as? HomeViewController
        viewcontroller?.presenter = HomePresenter(view: viewcontroller, users: users)
        guard let newViewcontroller = viewcontroller else { return nil }
        let navigationController = UINavigationController(rootViewController: newViewcontroller)
        navigationController.modalPresentationStyle = .fullScreen
        return navigationController
        
    }
}
