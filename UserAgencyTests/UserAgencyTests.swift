//
//  UserAgencyTests.swift
//  UserAgencyTests
//
//  Created by Terry Huang on 2020/12/22.
//

import XCTest
@testable import UserAgency

class UserAgencyTests: XCTestCase {

    var agency: UserAgency?

    override func setUpWithError() throws {
        agency = UserAgency()
            .setUserDevice(iPhone())
            .setUserApp(Safari())
    }

    override func tearDownWithError() throws {
    }

    func testBaseSample() throws {
        XCTAssertTrue(agency!.getString().contains("iPhone OS"))
        XCTAssertTrue(agency!.getString().contains("like Mac OS X"))
        XCTAssertTrue(agency!.getString().contains("AppleWebKit"))
        XCTAssertTrue(agency!.getString().contains("Mobile"))
        XCTAssertTrue(agency!.getString().contains("Safari"))
    }
}
