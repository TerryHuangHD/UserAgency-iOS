//
//  UserApp.swift
//  UserAgency
//
//  Created by Terry Huang on 2020/12/22.
//

import Foundation

public protocol UserApp: AnyObject {
    func setUserDevice(_ device: UserDevice?)
    func getResultSystemInformation() -> String
    func getResultPlatform() -> String
}
