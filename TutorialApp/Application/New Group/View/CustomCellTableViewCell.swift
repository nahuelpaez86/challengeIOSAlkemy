//
//  CustomCellTableViewCell.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    // MARK:- labels
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var subtitleMovie: UILabel!
    
    
    //MARK:- config
    func config ( for movie : Movie){
        let emoji = "🍿"
        titleMovie.text = "\(emoji) \(movie.title)"
        subtitleMovie.text = "Language : \(movie.language)"
    }
    
}
