//
//  music.swift
//  sample
//
//  Created by 笹倉一也 on 2019/05/24.
//  Copyright © 2019 笹倉一也. All rights reserved.
//

import UIKit
import RealmSwift

class music: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    var songs: Results<Song>!

    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        print(Realm.Configuration.defaultConfiguration.fileURL!)


    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        let object = songs[indexPath.row]
        
        
        cell.textLabel?.text = object.name
        
        return cell
    
    }
    
    
    
    
    
    
    @IBAction func upload(_ sender: Any) {
        
        
    }
    


}
