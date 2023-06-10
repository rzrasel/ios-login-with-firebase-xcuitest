//
//  EmailTest.swift
//  FirebaseAuthenticationUITests
//
//  Created by moniruzzaman on 9/6/23.
//

import XCTest

class SignInTests: XCTestCase {
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        //
    }
    
    func testSigninView() {
        SignInPage()
            .tapSignInButton()
    }
}
