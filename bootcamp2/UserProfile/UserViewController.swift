//
//  UserViewController.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 16/4/21.
//

import UIKit
import SDWebImage

protocol UserProfileView: class {
    func setupImage(url: String?)
}

final class UserViewController: UIViewController, UserProfileView {
    
    
    @IBOutlet private weak var imageView: UIImageView! {
        didSet {
            imageView?.layer.cornerRadius = imageView.frame.size.height/2
        }
    }
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var switchView: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var segmentedView: UIView!
    @IBOutlet weak var stepperView: UIView!
    
    var presenter: UserProfilePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.showUserImage()
    }

    
    func setupImage(url: String?) {
        guard let urlPath = url, let newURL = URL(string: urlPath) else { return }
        imageView?.sd_setImage(with: newURL)
    }

    @IBAction func switchTapped(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            switchView.backgroundColor = .red
        case false:
            switchView.backgroundColor = .orange
        }
    }
    
    @IBAction func segmentedTapped(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            segmentedView?.backgroundColor = .red
        } else {
            segmentedView.backgroundColor = .orange
        }
    }
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        stepperView?.backgroundColor = UIColor.red.withAlphaComponent(CGFloat(sender.value))
    }
}
