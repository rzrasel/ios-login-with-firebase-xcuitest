//
//  StartinViewTests.swift
//  FirebaseAuthenticationUITests
//
//  Created by Rz Rasel on 10/6/23.
//

import XCTest

class StartingViewTests: XCTestCase {
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        //
    }

    func testStartingView() {
        StargingViewPage()
            .tapSignInButton()
    }
}
