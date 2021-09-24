//
//  FavoritesViewModel.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 23/09/2021.
//

import Foundation

class FavortiesViewModel {
    //MARK:- atributtes
    
    var moviesFavs:[Movie] = []
    
    
    //MARK:- DataSorce config
       
       func RowsInSection()->Int{
        return moviesFavs.count
       }
       
  func item (at indexPath: IndexPath)-> Movie{
    return moviesFavs[indexPath.row]
    }
    
    
}
