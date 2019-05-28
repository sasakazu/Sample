//
//  signUp.swift
//  sample
//
//  Created by 笹倉一也 on 2019/05/28.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import Firebase

class signUp: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var pass2TF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailTF.text!, password: passTF.text!) { (authResult, error) in
         
            
            guard (authResult?.user) != nil else { return }
        
        
        }
    
    }

    
    
    
}
