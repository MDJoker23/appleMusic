//
//  itunesMusic.swift
//  appleMusic
//
//  Created by Joker on 08.04.2023.
//

import Foundation
import SwiftyJSON

struct itunesMusic {
    var artistName = ""
    var artWorkUrl100 = ""
    var trackName = ""
    var previewUrl = ""
    
    init(){
        
    }
    
    init (json: JSON) {
        if let item = json ["artistName"].string {
            artistName = item
        }
        if let item = json ["artworkUrl100"].string {
            artWorkUrl100 = item
        }
        if let item = json ["trackName"].string {
            trackName = item
        }
        if let item = json ["previewUrl"].string {
            previewUrl = item
        }
    }
}


