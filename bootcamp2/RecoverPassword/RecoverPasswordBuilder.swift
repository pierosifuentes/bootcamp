//
//  RecoverPasswordBuilder.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 12/4/21.
//

import UIKit

class RecoverPasswordBuilder {
    
    static func makeView() -> RecoverPasswordViewController? {
        let viewController = RecoverPasswordViewController(nibName: "RecoverPasswordViewController", bundle: .main)
        return viewController
    }
}
