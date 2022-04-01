//
//  PersonDataTableViewCell.swift
//  MVVM Example
//
//  Created by Shahzaib Mumtaz on 17/01/2022.
//

import UIKit

class PersonDataTableViewCell: UITableViewCell
{
    @IBOutlet weak var PersonImage: UIImageView!
    @IBOutlet weak var PersonName: UILabel!
    @IBOutlet weak var teamName: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
}
