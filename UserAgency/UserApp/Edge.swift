//
//  Edge.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/27.
//

import Foundation

public class Edge: UserApp {
    weak var userDevice: UserDevice?

    var layoutEngine_iOS = "605.1.15"
    var version_iOS = "14.0"
    var build_iOS = "15E148"

    var softwareVersion_Chrome = "87.0.4280.101"

    var layoutEngine = "537.36"
    var softwareVersion = "45.12.24.5121"

    /*
    // iPhone / iPad
    AppleWebKit/{$layoutEngine_iOS} (KHTML, like Gecko) Version/{$version_iOS} EdgiOS/{$softwareVersion} Mobile/{$build_iOS} Safari/{$layoutEngine_iOS}
    // Android Phone / Tablet
    AppleWebKit/{$layoutEngine} (KHTML, like Gecko) Chrome/{$softwareVersion_Chrome} Mobile Safari/{$layoutEngine_iOS} EdgA/{$softwareVersion}
    // Mac / WindowsPC
    AppleWebKit/{$layoutEngine} (KHTML, like Gecko) Chrome/{$softwareVersion_Chrome} Safari/{$layoutEngine} Edg/{$softwareVersion_Chrome}
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
            return String(format: "AppleWebKit/%@ (KHTML, like Gecko) Version/%@ EdgiOS/%@ Mobile/%@ Safari/%@",
                          arguments: [layoutEngine_iOS,
                                      version_iOS,
                                      softwareVersion,
                                      build_iOS,
                                      layoutEngine_iOS])
        }

        if userDevice is Mac
            || userDevice is WindowsPC {
            return String(format: "AppleWebKit/%@ (KHTML, like Gecko) Chrome/%@ Safari/%@ Edg/%@",
                          arguments: [layoutEngine,
                                      softwareVersion_Chrome,
                                      layoutEngine,
                                      softwareVersion_Chrome])
        }
        
        return String(format: "AppleWebKit/%@ (KHTML, like Gecko) Chrome/%@ Mobile Safari/%@ EdgA/%@",
                      arguments: [layoutEngine,
                                  softwareVersion_Chrome,
                                  layoutEngine_iOS,
                                  softwareVersion])
    }
}

