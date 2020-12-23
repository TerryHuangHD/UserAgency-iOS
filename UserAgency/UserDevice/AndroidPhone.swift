//
//  AndroidPhone.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/23.
//

import Foundation

public class AndroidPhone: UserDevice {
    weak var userApp: UserApp?

    var osVersion = "11"

    /*
    // Chrome
    Linux; Android {$osVersion}
    Linux; Android {$osVersion}; {$deviceId}
    // FireFox
    Android {$osVersion}; Mobile;
    Android {$osVersion}; Mobile; {$deviceId};
    // Edge
    Linux; Android {$osVersion}
    Linux; Android {$osVersion}; {$deviceId}
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

        if userApp is Firefox {
            return String(format: "Android %@; Mobile;",
                          arguments: [osVersion])
        }

        return String(format: "Linux; Android %@",
                      arguments: [osVersion])
    }
}

