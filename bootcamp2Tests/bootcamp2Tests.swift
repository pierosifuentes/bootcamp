//
//  bootcamp2Tests.swift
//  bootcamp2Tests
//
//  Created by Piero Sifuentes on 7/4/21.
//

import XCTest
@testable import bootcamp2

class bootcamp2Tests: XCTestCase {
    
    var sut: HomePresenter!
    var view: CustomHomeView!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        view = CustomHomeView()
        sut = HomePresenter(view: view, users: [])
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }
    
    func testReloadData() throws {
        view.reloadData()
        XCTAssertTrue(view.isReloadDataCalled)
    }

}

class CustomHomeView: HomeView {
    
    var isReloadDataCalled = false
    
    func reloadData() {
        isReloadDataCalled = true
    }
    
}
