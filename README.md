![image](https://github.com/YamamotoDesu/UITestingSwiftUI/assets/47273077/eae5c459-85d6-4902-bb31-6953ae0b16e8)

```swift
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

```
