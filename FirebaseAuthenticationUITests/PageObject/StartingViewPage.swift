//
//  StartingViewPage.swift
//  FirebaseAuthenticationUITests
//
//  Created by moniruzzaman on 10/6/23.
//

import XCTest

public class StargingViewPage: BaseTest {
    override var rootElement: XCUIElement {
        return app.buttons["Sign In"]
    }
    
    lazy var signInButton = app.buttons["Sign In"]
    
    lazy var signUpButton = app.buttons["Sign In"]
    
    @discardableResult
    func tapSignInButton(completion: Completion = nil) -> Self {
        log("tap the sign in button")
        _=signInButton.waitForExistence(timeout: 10)
        signInButton.tap()
        return self
    }
    
    @discardableResult
    func tapSignUpButton(completion: Completion = nil) -> Self {
        log("tap the sign up button")
        _=signUpButton.waitForExistence(timeout: 10)
        signUpButton.tap()
        return self
    }
}
