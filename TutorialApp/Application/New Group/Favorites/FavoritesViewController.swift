//
//  FavoritesViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 23/09/2021.
//

import UIKit

class FavoritesViewController:UIViewController{
    
    //MARK:- attributtes
    private var viewModelFav:FavortiesViewModel!

 
    //MARK:- conection
    @IBOutlet weak var favoritesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelFav = FavortiesViewModel()
        //self.favoritesTable.delegate = self
        favoritesTable.dataSource = self
        let nib = UINib(nibName: "FavCustomCellTableViewCell", bundle: nil)
        favoritesTable.register(nib, forCellReuseIdentifier: "FavCustomCellTableViewCell")
        getFavs()
        }
 
    func getFavs(){
        if viewModelFav.moviesFavs.count > 0 {
            self.favoritesTable.reloadData()
        }
    }


}
//MARK:-DataSorce tableView
extension FavoritesViewController: UITableViewDataSource{
 
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModelFav.RowsInSection()
 }
 
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "FavCustomCellTableViewCell", for: indexPath) as! FavCustomCellTableViewCell
    let movieFav = viewModelFav.item(at: indexPath)
    cell.configDate(for: movieFav)
    return cell
 }
}
// MARK:- Delegate tableview

//extension tableViewController : UITableViewDelegate{
//  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//     let movieSelect = viewModel.item(at: indexPath)
//     let detailView = DetailMovieViewController()
//     detailView.movie = movieSelect
//     self.present(detailView, animated: true)
// }
// func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//     return 150
// }
//
//
// func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//     viewModel.willDisplaySetup(at: indexPath)
// }
//}
