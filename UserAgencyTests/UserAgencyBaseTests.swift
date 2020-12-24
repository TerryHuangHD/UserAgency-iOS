//
//  UserAgencyTests.swift
//  UserAgencyTests
//
//  Created by Terry Huang on 2020/12/22.
//

import XCTest
@testable import UserAgency

class UserAgencyTests: XCTestCase {

    var defaultSetting: UserAgency?
    var allDevice = [UserDevice]()
    var allApp = [UserApp]()

    override func setUpWithError() throws {
        defaultSetting = UserAgency()
        
        allDevice = [
            AndroidPhone(),
            AndroidPad(),
            iPhone(),
            iPad(),
            Mac(),
            PC()
        ]
        
        allApp = [
            Chrome(),
            Firefox(),
            Safari()
        ]
    }

    override func tearDownWithError() throws {
    }

    func test_Default() throws {
        // Default: iPhone, Safari
        XCTAssertTrue(defaultSetting!.getString().contains("iPhone OS"))
        XCTAssertTrue(defaultSetting!.getString().contains("like Mac OS X"))
        XCTAssertTrue(defaultSetting!.getString().contains("AppleWebKit"))
        XCTAssertTrue(defaultSetting!.getString().contains("Mobile"))
        XCTAssertTrue(defaultSetting!.getString().contains("Safari"))
    }
    
    func test_AllDevicesNotCrash() throws {
        for device in allDevice {
            XCTAssertTrue(device.getResultSystemInformation().isEmpty)
        }
    }
    
    func test_AllAppsNotCrash() throws {
        for app in allApp {
            XCTAssertTrue(app.getResultSystemInformation().isEmpty)
            XCTAssertTrue(app.getResultPlatform().isEmpty)
        }
    }
}
