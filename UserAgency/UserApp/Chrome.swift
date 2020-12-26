//
//  Chrome.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/23.
//

import Foundation

public class Chrome: UserApp {
    weak var userDevice: UserDevice?

    var layoutEngine_iOS = "605.1.15"
    var build_iOS = "15E148"

    var layoutEngine = "537.36"
    var softwareVersion = "87.0.4280.88"

    /*
    // iPhone / iPad
    AppleWebKit/{$layoutEngine_iOS} (KHTML, like Gecko) CriOS/{$softwareVersion} Mobile/{$build_iOS} Safari/{$layoutEngine_iOS}
    // Android Phone / Tablet
    AppleWebKit/{$layoutEngine} (KHTML, like Gecko) Chrome/{$softwareVersion} Mobile Safari/{$layoutEngine}
    // Mac / WindowsPC
    AppleWebKit/{$layoutEngine} (KHTML, like Gecko) Chrome/{$softwareVersion} Safari/{$layoutEngine}
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

        if userDevice is iPhone
            || userDevice is iPad {
            return String(format: "AppleWebKit/%@ (KHTML, like Gecko) CriOS/%@ Mobile/%@ Safari/%@",
                          arguments: [layoutEngine_iOS,
                                      softwareVersion,
                                      build_iOS,
                                      layoutEngine_iOS])
        }

        if userDevice is Mac
            || userDevice is WindowsPC {
            return String(format: "AppleWebKit/%@ (KHTML, like Gecko) Chrome/%@ Safari/%@",
                          arguments: [layoutEngine,
                                      softwareVersion,
                                      layoutEngine])
        }

        return String(format: "AppleWebKit/%@ (KHTML, like Gecko) Chrome/%@ Mobile Safari/%@",
                      arguments: [layoutEngine,
                                  softwareVersion,
                                  layoutEngine])
    }
}
