//
//  PC.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/23.
//

import Foundation

public class WindowsPC: UserDevice {
    weak var userApp: UserApp?

    var osVersion = "10.0"

    /*
    // Chrome / FireFox / Edge / IE
    Windows NT {$osVersion}; Win64; x64
    Windows NT {$osVersion}; WOW64
    Windows NT {$osVersion}
    */
    
    public init() {
    }

    public func setUserApp(_ app: UserApp?) {
        userApp = app
    }

    public func getResultSystemInformation() -> String {
        if userApp == nil {
            return ""
        }

        return String(format: "Windows NT %@; Win64; x64",
                      arguments: [osVersion])
    }
}
