//
//  object.swift
//  Pods-sample
//
//  Created by 笹倉一也 on 2019/05/24.
//

import Foundation
import RealmSwift

class MC: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var image:UIImage?
    @objc dynamic var profiler = ""
    
    
    let songs = List<Song>()
    
}


class Song: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var lyric = ""
    
}
