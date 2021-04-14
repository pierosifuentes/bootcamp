//
//  LoginPresenter.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 7/4/21.
//

//MVP
//M <-> P <-> V

import Foundation

class LoginPresenter {
    
    private var model: LoginModel
    private weak var view: LoginView?
    
    init(view: LoginView, model: LoginModel = LoginModel()) {
        self.view = view
        self.model = model
    }
    
    func onLoginTapped(username: String, password: String) {
        view?.showLoader()
        model.login(username: username, password: password) { [weak self] response in
            self?.view?.hideLoader()
            switch response {
            case .success(let users):
                self?.view?.showHome(users: users)
            case .failure(let error):
                self?.view?.showAlert(error: error)
            case .none:
                break
            }
        }
    }
}
