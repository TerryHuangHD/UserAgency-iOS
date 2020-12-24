//
//  iPad.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/24.
//

import Foundation

public class iPad: UserDevice {
    weak var userApp: UserApp?

    var osVersion = "14_3"

    /*
    // Safari / Chrome / FireFox / Edge
    iPad; CPU OS {$osVersion} like Mac OS X
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

        return String(format: "iPad; CPU OS %@ like Mac OS X",
                      arguments: [osVersion])
    }
}
