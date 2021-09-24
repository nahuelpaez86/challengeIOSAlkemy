//
//  DetailMovieViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import UIKit
import Kingfisher
class DetailMovieViewController: UIViewController {

    // MARK:- atributtes
    var movie: Movie!

    let baseUrl = "https://image.tmdb.org/t/p/w300"
    //MARK:- conection UI
    
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var yearMovie: UILabel!
    
    @IBOutlet weak var languageMovie: UILabel!
    @IBOutlet weak var overviewMovie: UILabel!
    
    @IBOutlet weak var imageDetail: UIImageView!
    
    
    //MARK:- Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configLabels(for : movie)

        // Do any additional setup after loading the view.
    }
    //MARK:- function by data
    
    func configLabels (for movie : Movie){
        let emoji = "🍿"
        let imageUrl = movie.poster
        if let url = URL(string: baseUrl+imageUrl){
            imageDetail.kf.setImage(with: url)
        }
        titleMovie.text = "\(emoji) Title : \(movie.title) "
        yearMovie.text = "\(emoji) Year : \(movie.year)"
        languageMovie.text = "\(emoji) Language :\(movie.language)"
        overviewMovie.text = "\(emoji) OverView: \(movie.overview)"
    }

    
    
    


}



