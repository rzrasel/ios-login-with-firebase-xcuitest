//
//  LoginPage.swift
//  FirebaseAuthenticationUITests
//
//  Created by Rz Rasel on 10/6/23.
//

import XCTest

public class SignInPage: BaseTest {
    override var rootElement: XCUIElement {
        return app.buttons["Sign In"]
    }

    lazy var emailTextField = app.textFields["Email"]
    lazy var passwordTextField = app.textFields["Password"]
    lazy var signInButton = app.buttons["Sign In"]

    @discardableResult
    func tapSignInButton(completion: Completion = nil) -> Self {
        _=signInButton.waitForExistence(timeout: 10)
        signInButton.tap()
        log("tap the sign in button")
        if(emailTextField.exists) {
            emailTextField.tap()
            emailTextField.typeText("test@gmail.com")
            sleep(40)
        }

        if(passwordTextField.exists) {
            passwordTextField.tap()
            passwordTextField.typeText("pAssword123#")
            sleep(40)
        }

        _=signInButton.waitForExistence(timeout: 10)
        signInButton.tap()
        return self
    }
}
