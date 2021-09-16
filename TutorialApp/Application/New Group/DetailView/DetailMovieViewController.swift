//
//  DetailMovieViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 16/09/2021.
//

import UIKit

class DetailMovieViewController: UIViewController {

    // MARK:- atributtes
    var movie: Movie!

    
    //MARK:- conection UI
    
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var yearMovie: UILabel!
    
    @IBOutlet weak var languageMovie: UILabel!
    @IBOutlet weak var overviewMovie: UILabel!
    
    
    
    //MARK:- Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configLabels(for : movie)
       
        
        // Do any additional setup after loading the view.
    }
    //MARK:- function by data
    
    func configLabels (for movie : Movie){
        let emoji = "🍿"
        titleMovie.text = "\(emoji) Title : \(movie.title) "
        yearMovie.text = "\(emoji) Year : \(movie.year)"
        languageMovie.text = "\(emoji) Language :\(movie.language)"
        overviewMovie.text = "\(emoji) OverView: \(movie.overview)"
    }

    
    
    
//MARK:- action button
    @IBAction func backButton(_ sender: Any) {
        let vc = tableViewController(nibName: "tableViewController", bundle: nil)
        self.present(vc, animated: true)
    }
   

}



