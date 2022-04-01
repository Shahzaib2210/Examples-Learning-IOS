//
//  DVViewController.swift
//  VIPER Example
//
//  Created by Shahzaib Mumtaz on 18/01/2022.
//

import UIKit

class DVViewController: UIViewController {

    @IBOutlet weak var Verified: UILabel!
    @IBOutlet weak var sent: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var v: UILabel!
    @IBOutlet weak var source: UILabel!
    @IBOutlet weak var update: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var created: UILabel!
    @IBOutlet weak var deleted: UILabel!
    @IBOutlet weak var used: UILabel!
    
    var variableVerified:Bool?
    var variableSentCount: Int=0
    var variableId: String?=""
    var variableUser: String?=""
    var variableText: String?=""
    var variableV: Int=0
    var variableSource: String?=""
    var variableUpdateat: String?=""
    var variableType: String?=""
    var variableCreated: String?=""
    var variableDeleted: Bool?
    var variableUsed: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Verified.text = "Verified: \(variableVerified?.description ?? "None")"
        sent.text = "SentCount: \(String(variableSentCount))"
        id.text = "Id: \(variableId ?? "Nil")"
        user.text = "User: \(variableUser ?? "Nil")"
        text.text = "Text: \(variableText ?? "Nil")"
        v.text = "V: \(String(variableV))"
        source.text = "Source: \(variableSource ?? "Nil")"
        update.text = "Update at: \(variableUpdateat ?? "Nil")"
        type.text = "Type: \(variableType ?? "Nil")"
        created.text = "Created: \(variableType ?? "Nil")"
        deleted.text = "Deleted: \(variableDeleted?.description ?? "None")"
        used.text = "Used: \(variableUsed?.description ?? "None")"
    }
    
}
