//
//  DetailViewController.swift
//  Example1
//
//  Created by Shahzaib Mumtaz on 07/01/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var team: UILabel!
    @IBOutlet weak var realname: UILabel!
    @IBOutlet weak var firstappearence: UILabel!
    @IBOutlet weak var createdby: UILabel!
    @IBOutlet weak var publisher: UILabel!
    @IBOutlet weak var bio: UILabel!
    
    var selectedImage: String?
    var selectedName: String?
    var selectedTeam: String?
    var selectedRealName: String?
    var selectedFirstAppearence: String?
    var selectedCreatedBy: String?
    var selectedPublisher: String?
    var selectedBio: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personImage.load(urlString: selectedImage ?? "No image")
        name.text = selectedName
        team.text = selectedTeam
        realname.text = selectedRealName
        firstappearence.text = selectedFirstAppearence
        createdby.text = selectedCreatedBy
        publisher.text = selectedPublisher
        bio.text = selectedBio
    }
    


}
