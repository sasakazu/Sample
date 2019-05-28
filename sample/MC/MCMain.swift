//
//  MC.swift
//  sample
//
//  Created by 笹倉一也 on 2019/05/25.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import RealmSwift

class MCMain: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var mcName:String = ""
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profile: UITextView!
    @IBOutlet weak var picture: UIImageView!
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let realm = try! Realm()
//        
//        
//        let users = realm.objects(MC.self)
//        
//        let u = users.first
//        
//        name.text = u?.name
//        
//        print(u?.name as Any)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        
        return cell
        
    }
    
    

    @IBAction func editMC(_ sender: Any) {
        
    }
    
  
    
    
    
    
}
