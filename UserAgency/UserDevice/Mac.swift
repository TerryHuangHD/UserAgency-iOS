//
//  Mac.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/23.
//

import Foundation

public class Mac: UserDevice {
    weak var userApp: UserApp?

    var osVersion = "11.1"

    /*
    // Safari / Chrome //Edge
    Macintosh; Intel Mac OS X {$osVersion}
    FireFox
    Macintosh; Intel Mac OS X {$osVersion}
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
            return String(format: "Macintosh; Intel Mac OS X %@",
                          arguments: [osVersion])
        }

        return String(format: "Macintosh; Intel Mac OS X %@",
                      arguments: [osVersion.replacingOccurrences(of: ".", with: "_")])
    }
}
