//
//  NoticeTableViewCell.swift
//  VIPER Example
//
//  Created by Shahzaib Mumtaz on 18/01/2022.
//

import UIKit

class NoticeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var CellView: UIView!
    
    @IBOutlet weak var LabelID: UILabel!
    @IBOutlet weak var Labeltitle: UILabel!
    @IBOutlet weak var labelBrief: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        CellView.layer.borderWidth = 1
        CellView.layer.cornerRadius = 5
        CellView.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
