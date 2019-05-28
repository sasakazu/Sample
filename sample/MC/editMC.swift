//
//  editMC.swift
//  sample
//
//  Created by 笹倉一也 on 2019/05/25.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import RealmSwift
import FirebaseAuth

class editMC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var textview: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func save(_ sender: Any) {
        
        let user = Auth.auth().currentUser
        if let user = user {
            let changeRequest = user.createProfileChangeRequest()
            
            changeRequest.displayName = nameTF.text!
            
            changeRequest.commitChanges { error in
                if let error = error {
                    // An error happened.
                } else {
                    
                    print(user.displayName)
                    // Profile updated.
                }
            }
        }
        
     dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    
    }
    
    @IBAction func camera(_ sender: Any) {
        
        
    }
    
    
    
}
