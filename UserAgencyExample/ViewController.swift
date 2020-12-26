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
                .setDevice(iPhone())
                .setApp(Safari())
                .getString())
        
        print(UserAgency()
                .setDevice(Mac())
                .setApp(Firefox())
                .getString())
        
        print(UserAgency()
                .setDevice(WindowsPC())
                .setApp(Chrome())
                .getString())
        
        print(UserAgency()
                .setDevice(AndroidPhone())
                .setApp(Chrome())
                .getString())
    }
}

