//
//  LFLoginControllerExampleUITests.swift
//  LFLoginControllerExampleUITests
//
//  Created by Lucas Farah on 7/24/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//

import XCTest

class LFLoginControllerExampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let loginButton = app.buttons["Login"]
        loginButton.tap()
        
        let enterYourEmailTextField = app.textFields["Enter your Email"]
        enterYourEmailTextField.tap()
        enterYourEmailTextField.typeText("lucas.farah@me.com")
        app.typeText("\n")
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("1234\n")
        
        loginButton.tap()
    }
}
