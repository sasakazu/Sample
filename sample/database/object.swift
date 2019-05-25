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
    @objc dynamic var profile = ""
    @objc dynamic var image:UIImage?
    
    let songs = List<Song>()
    
}


class Song: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var lyric = ""
    @objc dynamic var selectBeat = ""
    @objc dynamic var time = ""
    
}
