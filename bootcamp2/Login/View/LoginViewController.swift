//
//  LoginViewController.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 7/4/21.
//

import UIKit

protocol LoginView: class {
    func showHome(users: [UserViewModel]?)
    func showRecoverPassword()
    func showLoader()
    func hideLoader()
    func showAlert(error: Error)
}

//View
class LoginViewController: UIViewController {
    
    var presenter: LoginPresenter?
    
    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var topConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter = LoginPresenter(view: self)
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }


    private func setup() {
        titleLabel?.textColor = .bcp
        topConstraint?.constant = 100
    }
    
    @IBAction private func loginTapped(_ sender: UIButton) {
        presenter?.onLoginTapped(username: usernameTextField?.text ?? "", password: passwordTextField?.text ?? "")
    }
    
    @IBAction private func recoverPasswordTapped(_ sender: Any) {
        showRecoverPassword()
    }
    
    deinit {
        print("this view was deinit")
    }
}

extension LoginViewController: LoginView {
    
    func showHome(users: [UserViewModel]?) {
        guard let homeViewController = HomeViewBuilder.makeView(users: users) else { return }
        present(homeViewController, animated: true, completion: nil)
    }
    
    func showRecoverPassword() {
        guard let recoverPasswordViewController = RecoverPasswordBuilder.makeView() else { return }
        navigationController?.pushViewController(recoverPasswordViewController, animated: true)
    }
    
    func showLoader() {
        
    }
    
    func hideLoader() {
        
    }
    
    func showAlert(error: Error) {
        
    }
    
}

