//
//  IE.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/27.
//

import Foundation

public class IE: UserApp {
    weak var userDevice: UserDevice?

    var layoutEngine = "7.0"
    var softwareVersion = "11.0"

    /*
    // WindowsPC
    ; Trident/{$layoutEngine}; rv:{$softwareVersion}
    like Gecko
    */

    public init() {
    }

    public func setUserDevice(_ device: UserDevice?) {
        userDevice = device
    }

    public func getResultSystemInformation() -> String {
        return String(format: "; Trident/%@; rv:%@",
                      arguments: [layoutEngine,
                                  softwareVersion])
    }

    public func getResultPlatform() -> String {
        if userDevice == nil {
            return ""
        }

        return "like Gecko"
    }
}
