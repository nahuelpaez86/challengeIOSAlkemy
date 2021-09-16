//
//  DetailTableViewCell.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    
    @IBOutlet weak var details: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
