//
//  CustomCellTableViewCell.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 15/09/2021.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    
    
    
    
    @IBOutlet weak var titleMovie: UILabel!
    
    @IBOutlet weak var subTitleMovie: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
