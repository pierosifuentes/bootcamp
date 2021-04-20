//
//  UserViewModel.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 14/4/21.
//

import Foundation

protocol UserViewModel {
    var id: String { get }
    var fullname: String { get }
    var imagePath: String { get }
}
