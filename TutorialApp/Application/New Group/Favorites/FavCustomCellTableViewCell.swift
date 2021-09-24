//
//  FavCustomCellTableViewCell.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 24/09/2021.
//

import UIKit
import Kingfisher

class FavCustomCellTableViewCell: UITableViewCell {

    let baseUrl = "https://image.tmdb.org/t/p/w300"
    //MARK:- conection UI
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var posterMovie: UIImageView!
    
    //MARK:- life cycle
    override func prepareForReuse() {
        super.prepareForReuse()
        posterMovie.image = nil
        posterMovie.kf.cancelDownloadTask()
    }
    //MARK:- config date

    func configDate(for moviesFavs: Movie){
        
        titleMovie.text = moviesFavs.title
        let imgURL=moviesFavs.poster
        if let url = URL(string: baseUrl+imgURL){
            posterMovie.kf.setImage(with: url)
        }
    }
    
}
