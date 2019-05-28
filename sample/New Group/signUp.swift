//
//  signUp.swift
//  sample
//
//  Created by 笹倉一也 on 2019/05/28.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import FirebaseAuth


class signUp: UIViewController {
  
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var pass2TF: UITextField!
    
    @IBOutlet weak var nameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
   
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        
        
        if let username = nameTF.text,
            let email = emailTF.text,
            let password = passTF.text {
        
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            
         
            if let user = authResult?.user {
             
          
                
                
            }
            guard (authResult?.user) != nil else { return }
        
            print(username)
        
            }}
    
    }

    
    
    
}
