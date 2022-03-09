//
//  SUPER_NANIO_MAKER_REMAKEUITestsLaunchTests.swift
//  SUPER NANIO MAKER REMAKEUITests
//
//  Created by cl_umeda_020 on R 4/03/09.
//

import XCTest

class SUPER_NANIO_MAKER_REMAKEUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
