//
//  HomePresenterTests.swift
//  bootcamp2Tests
//
//  Created by Piero Sifuentes on 7/4/21.
//

import XCTest
@testable import bootcamp2

class HomePresenterTests: XCTestCase {
    
    var sut: HomePresenter!
    var view: CustomHomeView!
    var users: [UserViewModel]!
    let mockUser = UserImplementation(id: "1", name: "Juan Perez", imagePath: "")

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        users = [mockUser]
        view = CustomHomeView()
        sut = HomePresenter(view: view, users: users)
       
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        users = []
    }
    
    func testSucceedOnUserSelectedAt() throws {
        sut.onUserSelectedAt(0)
        XCTAssertEqual((view.lastSelectedUser as? UserImplementation), mockUser, "El test no paso xq el mock user no es igual al view.lastSelectedUser")
    }
    
    
    func testfailureOnUserSelectedAt() throws {
        sut.onUserSelectedAt(1)
        XCTAssertNil(view.lastSelectedUser, "El test no paso xq el mock user no es igual al view.lastSelectedUser")
    }
}

class CustomHomeView: HomeView {
    
    var lastSelectedUser: User?
    var isReloadDataCalled = false
    
    func reloadData() {
        isReloadDataCalled = true
    }
    
    func showUserProfile(_ user: User) {
        lastSelectedUser = user
    }
}
