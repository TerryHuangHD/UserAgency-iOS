//
//  UserAgency.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/22.
//

import Foundation

public class UserAgency {

    var userDevice: UserDevice?
    var userApp: UserApp?

    public init() {
    }

    public func setApp(_ app: UserApp?) -> UserAgency {
        userApp = app
        return self
    }

    public func setDevice(_ device: UserDevice?) -> UserAgency {
        userDevice = device
        return self
    }

    public func getString() -> String {
        if userDevice == nil { userDevice = iPhone() }
        if userApp == nil { userApp = Safari() }
        
        userDevice!.setUserApp(userApp)
        userApp!.setUserDevice(userDevice)
        
        return String(format: "Mozilla/5.0 (%@%@) %@",
                        userDevice!.getResultSystemInformation(),
                        userApp!.getResultSystemInformation(),
                        userApp!.getResultPlatform())
    }
}
