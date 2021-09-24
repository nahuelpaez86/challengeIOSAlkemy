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
    
   
    // MARK: - Attributes
    var movies: [Movie] = []
    var pageNumber = 1
    private var viewModel:TableViewModel!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = TableViewModel()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        let nib = UINib(nibName: "CustomCellTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomCellTableViewCell")
        getMoviesPages()
        
    }
    
    // MARK:- Private Meth
    private func getMoviesPages(){
     viewModel.loadData(completionHandler: {
            self.tableView.reloadData()
        })
       }
}


   //MARK:-DataSorce tableView
extension tableViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.RowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableViewCell", for: indexPath) as! CustomCellTableViewCell
        let movie = viewModel.item(at: indexPath)
        cell.config(for: movie)
         return cell
    }
}
   // MARK:- Delegate tableview

extension tableViewController : UITableViewDelegate{
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieSelect = viewModel.item(at: indexPath)
        let detailView = DetailMovieViewController()
        detailView.movie = movieSelect
        self.navigationController?.pushViewController(detailView, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        viewModel.willDisplaySetup(at: indexPath)
    }
}
