//
//  LoginPresenter.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 7/4/21.
//

import Foundation

class LoginPresenter {
    
    var model: LoginModel
    weak var view: LoginView?
    
    init(view: LoginView, model: LoginModel = LoginModel()) {
        self.view = view
        self.model = model
    }
    
    func changePassword() {
        
    }
    
    func onLoginTapped(username: String, password: String) {
        //model.api.login(username, password) {
//            coordinator.showHome
        
//            loginView.showError
//       }
    }
}

//MVP

//M <-> P <-> V
 
