//
//  iPhone.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/22.
//

import Foundation

public class iPhone: UserDevice {
    weak var userApp: UserApp?

    var osVersion = "14_3"

    public init() {
    }
    
    public func setUserApp(_ app: UserApp?) {
        userApp = app
    }

    public func getResultSystemInformation() -> String {
        if userApp == nil {
            return ""
        }

        return String(format: "iPhone; CPU iPhone OS %@ like Mac OS X",
                      arguments: [osVersion])
    }
}
