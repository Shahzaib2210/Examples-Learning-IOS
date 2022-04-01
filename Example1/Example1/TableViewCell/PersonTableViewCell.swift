//
//  PersonTableViewCell.swift
//  Example1
//
//  Created by Shahzaib Mumtaz on 07/01/2022.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelTeam: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
