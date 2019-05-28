//
//  login.swift
//  sample
//
//  Created by 笹倉一也 on 2019/05/28.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class login: UIViewController {
    
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            
        print(user?.email)
        
        }
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTF.text!, password: passTF.text!) { (user, error) in
            

        
            if let error = error {
                print("login failed! \(error)")
                return
            }
            
            if let user = user {
                
                
                print("user :) has been signed in successfully.")
            }
        }
    }
    
    
    
    @IBAction func logout(_ sender: Any) {
    
        do{
            try Auth.auth().signOut()
            
            print("sign out")
        }catch let error as NSError{
            print(error)
        }
    
    
    }
    
    
}

