//
//  UserAgencyChromeTests.swift
//  UserAgencyTests
//
//  Created by Terry Huang on 2020/12/23.
//

import XCTest
@testable import UserAgency

class UserAgencySafariTests: XCTestCase {

    var agent: UserAgency?
    var safari: UserApp?
    var iphone: UserDevice?
    var mac: UserDevice?

    override func setUpWithError() throws {
        agent = UserAgency()
        safari = Safari()
        iphone = iPhone()
        mac = Mac()
    }

    override func tearDownWithError() throws {
    }

    func test_iPhone() throws {
        agent?.setUserDevice(iphone).setUserApp(safari)
        
        XCTAssertTrue(agent!.getString().contains("iPhone OS"))
        XCTAssertTrue(agent!.getString().contains("like Mac OS X"))
        XCTAssertTrue(agent!.getString().contains("AppleWebKit"))
        XCTAssertTrue(agent!.getString().contains("Mobile"))
        XCTAssertTrue(agent!.getString().contains("Safari"))
    }

    func test_Mac() throws {
        agent?.setUserDevice(mac).setUserApp(safari)
        
        XCTAssertTrue(agent!.getString().contains("Macintosh"))
        XCTAssertTrue(agent!.getString().contains("Mac OS X"))
        XCTAssertTrue(agent!.getString().contains("AppleWebKit"))
        XCTAssertFalse(agent!.getString().contains("Mobile"))
        XCTAssertTrue(agent!.getString().contains("Safari"))
    }

}
