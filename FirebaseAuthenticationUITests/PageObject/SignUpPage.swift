//
//  SignUpPage.swift
//  FirebaseAuthenticationUITests
//
//  Created by moniruzzaman on 10/6/23.
//

import XCTest

public class SignUpPage: BaseTest {
    override var rootElement: XCUIElement {
        return app.buttons["Sign Up"]
    }
    
    lazy var usernameTextField = app.textFields["Username"]
    lazy var emailTextField = app.textFields["Email"]
    lazy var passwordTextField = app.textFields["Password"]
    lazy var signUpButton = app.buttons["Sign Up"]
    
    @discardableResult
    func tapSignUpButton(completion: Completion = nil) -> Self {
        _=signUpButton.waitForExistence(timeout: 10)
        signUpButton.tap()
        
        log("tap the sign up button")
        if(usernameTextField.exists) {
            usernameTextField.tap()
            usernameTextField.typeText("test")
            sleep(30)
        }
        if(emailTextField.exists) {
            emailTextField.tap()
            emailTextField.typeText("test@gmail.com")
            sleep(30)
        }
        
        if(passwordTextField.exists) {
            passwordTextField.tap()
            passwordTextField.typeText("pAssword123#")
            sleep(40)
        }
        
        _=signUpButton.waitForExistence(timeout: 10)
        signUpButton.tap()
        return self
    }
}
