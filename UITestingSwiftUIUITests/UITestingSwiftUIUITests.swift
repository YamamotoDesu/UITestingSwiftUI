//
//  UITestingSwiftUIUITests.swift
//  UITestingSwiftUIUITests
//
//  Created by Yamamoto Kyo on 2024/06/03.
//

import XCTest

final class UITestingSwiftUIUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {
         continueAfterFailure = false
         app = XCUIApplication()
         app.launch()
     }

     func testAddTask() throws {
         let addTaskTab = app.tabBars.buttons["Add Task"]
         addTaskTab.tap()

         let textField = app.textFields["Enter task"]
         textField.tap()
         textField.typeText("New Task")

         // Dismiss the keyboard
         app.buttons["Return"].tap()

         let addTaskButton = app.buttons["AddTaskButton"]
         addTaskButton.tap()

         app.tabBars.buttons["Tasks"].tap()

         XCTAssertTrue(app.staticTexts["New Task"].exists)
     }
}
