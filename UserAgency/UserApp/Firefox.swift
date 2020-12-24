//
//  Firefox.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/23.
//

import Foundation

public class Firefox: UserApp {
    weak var userDevice: UserDevice?

    var layoutEngine_iOS = "605.1.15"
    var softwareVersion_iOS = "29.0"
    var build_iOS = "15E148"

    var softwareVersion = "84.0"
    var geckoVersion_PC_Mac = "20100101"

    /*
    // iPhone / iPad
    AppleWebKit/{$layoutEngine_iOS} (KHTML, like Gecko) FxiOS/{$softwareVersion_iOS} Mobile/{$build_iOS} Safari/{$layoutEngine_iOS}
    // Android Phone / Tablet
    ; rv:{$softwareVersion}
    Gecko/{$softwareVersion} Firefox/{$softwareVersion}
    // Mac / PC
    ; rv:{$softwareVersion}
    Gecko/{$geckoVersion_PC_Mac} Firefox/{$softwareVersion}
    */

    public init() {
    }

    public func setUserDevice(_ device: UserDevice?) {
        userDevice = device
    }

    public func getResultSystemInformation() -> String {
        if userDevice == nil {
            return ""
        }

        if userDevice is AndroidPhone
            || userDevice is AndroidPad
            || userDevice is Mac
            || userDevice is PC {
            return String(format: "; rv:%@",
                          arguments: [softwareVersion])
        }

        return ""
    }

    public func getResultPlatform() -> String {
        if userDevice == nil {
            return ""
        }

        if userDevice is iPhone
            || userDevice is iPad {
            return String(format: "AppleWebKit/%@ (KHTML, like Gecko) FxiOS/%@ Mobile/%@ Safari/%@",
                          arguments: [layoutEngine_iOS,
                                      softwareVersion_iOS,
                                      build_iOS,
                                      layoutEngine_iOS])
        }

        if userDevice is Mac
            || userDevice is PC {
            return String(format: "Gecko/%@ Firefox/%@",
                          arguments: [geckoVersion_PC_Mac,
                                      softwareVersion])

        }


        return String(format: "Gecko/%@ Firefox/%@",
                      arguments: [softwareVersion,
                                  softwareVersion])
    }
}
