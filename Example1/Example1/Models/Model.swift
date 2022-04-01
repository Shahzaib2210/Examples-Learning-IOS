//
//  Model.swift
//  Example1
//
//  Created by Shahzaib Mumtaz on 05/01/2022.
//

import Foundation
import UIKit

class record: Codable {
    let status: Status
    let id, user, text: String
    let v: Int
    let source, updatedAt, type, createdAt: String
    let deleted, used: Bool

    enum CodingKeys: String, CodingKey {
        case status
        case id = "_id"
        case user, text
        case v = "__v"
        case source, updatedAt, type, createdAt, deleted, used
    }
}

class Status: Codable {
    let verified: Bool
    let sentCount: Int
}

class Peraon: Codable {
    let name, realname, team, firstappearance: String
    let createdby, publisher: String
    let imageurl: String
    let bio: String
}
