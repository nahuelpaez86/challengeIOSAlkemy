//
//  favoriteCustomCellTableViewCell.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 23/09/2021.
//

import UIKit

class favoriteCustomCellTableViewCell: UITableViewCell {

    @IBOutlet weak var imageMovieFav: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
