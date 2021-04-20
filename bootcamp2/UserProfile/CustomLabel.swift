//
//  CustomLabel.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 20/4/21.
//

import UIKit

class CustomLabel: UILabel {
    
    var superColor: UIColor? = .red
    
}

class CustomTextField: UITextField {
    var superColor: UIColor? = .red
}



protocol CustomLabel2 {
    var superColor: UIColor? { get }
}

extension CustomLabel2 {
    var superColor: UIColor? {
        return .orange
    }
}

class CustomLabel2Imple: UILabel, CustomLabel2 {
    
}


class CustomTextFiedl2Imple: UITextField, CustomLabel2  {
    
}


