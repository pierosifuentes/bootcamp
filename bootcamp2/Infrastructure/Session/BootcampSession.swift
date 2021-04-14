//
//  BootcampSession.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 14/4/21.
//

import Foundation

class BootcampSession {
    
    static let shared: BootcampSession = BootcampSession()
    
    private init() {
        self.users = []
    }
    
    private var users: [User]
    
    func appendUsers(users: [User]) {
        self.users.append(contentsOf: users)
//        NotificationCenter.default.post(Notification(name: <#T##Notification.Name#>, object: <#T##Any?#>, userInfo: <#T##[AnyHashable : Any]?#>))
    }
    
}
