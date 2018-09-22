//
//  ViewController.swift
//  Project Group 7
//
//  Created by Johnny Sun on 9/19/18.
//  Copyright © 2018 Johnny Sun. All rights reserved.
//

import UIKit
import CloudKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    var UserProfileRecord = CKRecord(recordType: "UserProfile")
    override func viewDidLoad() {
        UserProfileRecord.setValue("Johnny", forKey: "Admin1")
        UserProfileRecord.setValue("Kevin", forKey: "Admin2")
        print(UserProfileRecord.recordID)
        print("All Keys: ", UserProfileRecord.allKeys())
        print("All Tokens: ", UserProfileRecord.allTokens())
    }
}
