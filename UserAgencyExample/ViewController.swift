//
//  ViewController.swift
//  UserAgencyExample
//
//  Created by Terry Huang on 2020/12/22.
//

import UIKit
import UserAgency

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(UserAgency()
                .setUserDevice(iPhone())
                .setUserApp(Safari())
                .getString())
    }
}

