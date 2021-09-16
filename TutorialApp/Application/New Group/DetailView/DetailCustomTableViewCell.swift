//
//  DetailCustomTableViewCell.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import UIKit

class DetailCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldDetail: UILabel!
    @IBOutlet weak var bodyDetail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
