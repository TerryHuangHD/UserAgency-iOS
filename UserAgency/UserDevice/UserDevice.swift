//
//  UserDevice.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/22.
//

import Foundation

public protocol UserDevice: AnyObject {
    func setUserApp(_ app: UserApp?)
    func getResultSystemInformation() -> String
}
