//
//  SignUpTests.swift
//  FirebaseAuthenticationUITests
//
//  Created by Rz Rasel on 10/6/23.
//

import XCTest

class SignUpTests: XCTestCase {
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        //
    }

    func testSigninView() {
        SignUpPage()
            .tapSignUpButton()
    }
}
