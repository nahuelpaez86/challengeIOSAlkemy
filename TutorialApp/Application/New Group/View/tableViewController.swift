//
//  tableViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 15/09/2021.
//

import UIKit
import Alamofire

class tableViewController: UIViewController {

    // MARK:- View
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = ViewModelMovies()
    // MARK: - Attributes
    var movies: [Movie] = []
    var pageNumber = 1
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        let nib = UINib(nibName: "CustomCellTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomCellTableViewCell")
        getMoviesPages( page : pageNumber)
        
    }
    
    // MARK:- Private Meth
    private func getMoviesPages(page:Int){
        ApiGet.getMovies(page: page, completionHandler:{ movies in
            self.movies.append(contentsOf: movies)
            self.tableView.reloadData()
        })
        
    }
}


//MARK:-DataSorce tableView
extension tableViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableViewCell", for: indexPath) as! CustomCellTableViewCell
        let movie = movies[indexPath.row]
        cell.config(for: movie)
         return cell
    }
}
// MARK:- Delegate tableview

extension tableViewController : UITableViewDelegate{
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieSelect = movies[indexPath.row]
        let detailView = DetailMovieViewController()
        detailView.movie = movieSelect
        self.present(detailView, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == movies.count - 5 {
            pageNumber = pageNumber + 1
            getMoviesPages(page: pageNumber)
        }
    }
}
