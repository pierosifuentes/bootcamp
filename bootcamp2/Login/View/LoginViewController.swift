//
//  LoginViewController.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 7/4/21.
//

import UIKit

protocol LoginView: class {
    
}

//View
class LoginViewController: UIViewController, LoginView { //1
    
    var presenter: LoginPresenter?
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter = LoginPresenter(view: self)
        setup()
    }


    func setup() {
        titleLabel?.textColor = .bcp
        topConstraint.constant = 100
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        presenter?.onLoginTapped(username: usernameTextField?.text ?? "", password: passwordTextField?.text ?? "")
    }
    
    deinit {
        print("this view was deinit")
    }
    
    
}

