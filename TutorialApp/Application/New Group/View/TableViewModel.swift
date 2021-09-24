//
//  tableViewModel.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 20/09/2021.
//

import UIKit


class TableViewModel: UITableView {
 //MARK:- Atributtes
    var movies: [Movie] = []
    var favMovies : [Movie] = []
    var pageNumber = 1
    
    
//MARK:- Data method
    func loadData( completionHandler: (()->Void)?){
      ApiGet.getMovies(page: pageNumber, completionHandler:{ movies in
            self.movies.append(contentsOf: movies)
        completionHandler?()
        })
    }
    
    
 //MARK:- DataSorce config
    
    func RowsInSection()->Int{
        return movies.count
    }
    
    func item (at indexPath: IndexPath)-> Movie{
       return movies[indexPath.row]
    }
    
    
    //MARK:- Delegate config
    
// VER! 
    
    func willDisplaySetup(at indexPath : IndexPath){
        if indexPath.row == movies.count - 5 {
         pageNumber += 1
           print(pageNumber)
        }
    }
    
 
}




