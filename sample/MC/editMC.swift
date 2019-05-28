//
//  editMC.swift
//  sample
//
//  Created by 笹倉一也 on 2019/05/25.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import RealmSwift

class editMC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var textview: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        textview.layer.borderColor = UIColor.black.cgColor
        
    }
    
    @IBAction func save(_ sender: Any) {
        
        
//        let user = MC()
//        
//        user.profile = textview.text!
//
//        user.save()
//        
//        do {
//            let realm = try Realm()
//            try! realm.write {
//                realm.add(user)
//                
//                user.save()
//                
//                print("成功", user)
//            }
//        } catch {
//            print("エラー")
//        }
//        
//        dismiss(animated: true, completion: nil)
//        
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    
    }
    
    @IBAction func camera(_ sender: Any) {
        
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let next = segue.destination as? MCMain
//        let _ = next?.view
//        
//        next?.mcName = nameTF.text!
//    }
    
    
    
}
