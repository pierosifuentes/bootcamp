//
//  LoginViewController.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 7/4/21.
//

import UIKit

protocol LoginView: class {
    func showHome()
}

//View
class LoginViewController: UIViewController, LoginView {
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
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
    
    func showHome() {
        performSegue(withIdentifier: "loginSegue", sender: nil)
    }
    
    
}

