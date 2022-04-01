//
//  DataTableViewCell.swift
//  Example1
//
//  Created by Shahzaib Mumtaz on 05/01/2022.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var labelVerified: UILabel!
    @IBOutlet weak var labelSentcount: UILabel!
    @IBOutlet weak var labelId: UILabel!
    @IBOutlet weak var lblUser: UILabel!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var labelV: UILabel!
    @IBOutlet weak var labelSource: UILabel!
    @IBOutlet weak var labelUpdatedat: UILabel!
    @IBOutlet weak var labelType: UILabel!
    @IBOutlet weak var labelCreatedAt: UILabel!
    @IBOutlet weak var labelDeleted: UILabel!
    @IBOutlet weak var labelUsed: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
