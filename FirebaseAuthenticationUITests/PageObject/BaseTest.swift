//
//  BaseTest.swift
//  FirebaseAuthenticationUITests
//
//  Created by moniruzzaman on 10/6/23.
//

import XCTest

class Logger {
    func log(_ message: String) {
        NSLog(message)
    }
}

public class BaseTest {
    typealias Completion = (() -> Void)?
    let app = XCUIApplication()
    let log = Logger().log
    required init(timeout: TimeInterval = 10, completion: Completion = nil) {
        XCTAssert(rootElement.waitForExistence(timeout: timeout), "Page \(String(describing: self)) waited, but not loaded")
        completion?()
    }
    
    // rootElement
    var rootElement: XCUIElement {
        fatalError("subclass should override rootElement")
    }
    
    // Navigation bar
    func navBar(_ name: String) -> XCUIElement {
        return app.navigationBars[name]
    }
    
    // Button
    func button(_ name: String) -> XCUIElement {
        return app.buttons[name]
    }
    
    // TextField
    func textField(_ name: String) -> XCUIElement {
        return app.textFields[name]
    }
    
    //TextView
    func textView(_ name: String) -> XCUIElement {
        return app.textViews[name]
    }
    
    //Text
    func text(_ name: String) -> XCUIElement {
        return app.staticTexts[name]
    }
}
