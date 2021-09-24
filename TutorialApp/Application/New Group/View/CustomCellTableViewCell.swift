//
//  CustomCellTableViewCell.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import UIKit
import Kingfisher

class CustomCellTableViewCell: UITableViewCell{

    let baseUrl = "https://image.tmdb.org/t/p/w300"
    var data:Movie!
    var viewModel = FavortiesViewModel()
    
    // MARK:- labels
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var posterImg: UIImageView!
    
    //MARK:- life cycle
    override func prepareForReuse() {
        super.prepareForReuse()
        
        posterImg.image = nil
        posterImg.kf.cancelDownloadTask()
        
    }
   
    //MARK:- config movies
    func config ( for movie : Movie){
        data = movie
        titleMovie.text = movie.title
        let imageUrl = movie.poster
        if let url = URL(string: baseUrl+imageUrl ){
            posterImg.kf.setImage(with:url)
        }
    }
    //MARK:- config favs
  // funcion que pasa la data al page de favs Ver!
    @IBAction func eventFavorites(_ sender: Any) {
        let date = data!
        viewModel.moviesFavs.append(date)
    }
   
}
