//
//  ButtonsUITests.swift
//  ButtonsUITests
//
//  Created by Michele Titolo on 6/9/15.
//  Copyright © 2015 Michele Titolo. All rights reserved.
//

import Foundation
import XCTest

class ButtonsUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOne() {
        let app = XCUIApplication()
        app.buttons["One"].tap()

        let aTextFieldTextField = app.textFields["A Text Field"]
        aTextFieldTextField.tap()
        aTextFieldTextField.typeText("asd")
        
    }
    
    func testTwo() {
        let app = XCUIApplication()
        app.buttons["Two"].tap()
        let colorLabel = app.staticTexts["Color Label"]
        
        XCTAssert(colorLabel.label == "PINK", "Color label should be pink")
        
        
    }
    
}
