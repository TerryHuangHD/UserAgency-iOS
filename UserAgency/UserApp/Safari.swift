//
//  Safari.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/22.
//

import Foundation

public class Safari: UserApp {
    weak var userDevice: UserDevice?

    var layoutEngine = "605.1.15"
    var softwareVersion = "14.0"
    var build = "15E148"

    /*
    // iPhone / iPad
    AppleWebKit/{$layoutEngine} (KHTML, like Gecko) Version/{softwareVersion} Mobile/{$build} Safari/{$layoutEngine}
    // Mac
    AppleWebKit/{$layoutEngine} (KHTML, like Gecko) Version/{softwareVersion} Safari/{$layoutEngine}
    */

    public init() {
    }

    public func setUserDevice(_ device: UserDevice?) {
        userDevice = device
    }

    public func getResultSystemInformation() -> String {
        return ""
    }

    public func getResultPlatform() -> String {
        if userDevice == nil {
            return ""
        }

        if userDevice is Mac {
            return String(format: "AppleWebKit/%@ (KHTML, like Gecko) Version/%@ Safari/%@",
                          arguments: [layoutEngine,
                                      softwareVersion,
                                      layoutEngine])
        }

        return String(format: "AppleWebKit/%@ (KHTML, like Gecko) Version/%@ Mobile/%@ Safari/%@",
                      arguments: [layoutEngine,
                                  softwareVersion,
                                  build,
                                  layoutEngine])
    }
}
