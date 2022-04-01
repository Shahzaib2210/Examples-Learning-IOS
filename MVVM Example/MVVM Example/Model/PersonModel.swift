//
//  PersonModel.swift
//  MVVM Example
//
//  Created by Shahzaib Mumtaz on 17/01/2022.
//

import Foundation
import UIKit

class PeraonModel: Codable {
    
    var name: String?
    var realname: String?
    var team: String?
    var firstappearance: String
    var createdby: String?
    var publisher: String?
    var imageurl: String?
    var bio: String?
    
    init(name: String, realname: String, team: String,firstappearance: String, createdby: String, publisher: String, imageurl: String, bio: String) {
        
        self.name = name
        self.realname = realname
        self.team = team
        self.firstappearance = firstappearance
        self.createdby = createdby
        self.publisher = publisher
        self.imageurl = imageurl
        self.bio = bio
    }
}
