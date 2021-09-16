//
//  ViewModel.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 15/09/2021.
//

import Foundation
import Alamofire

/*
 funciones basicas que uso de alamofire son
 
 let request = AF.request( url , method : HTTPMethod.get)
 
 request.responseData {
 (response : AFDataResponse <Data>) in
 
 }
 
 el AFDataResponse<Data> tiene una prop data, que contiene un tipo Data que contiene un JSON que es
 posible convertir a nuestros modelos
 
 
---------------
 pedimos la data a la api y la convertimos esa data a un array de nuestro modelo
 
 request.responseData { (response : AFDataResponse<Data>) in
     guard let data = response.data else { return }
 
    let decoder = JSONDecoder()
    let users = try? decoder.decode([User].self,from:Data)  User = nuestro modelo
 ------------------
 
 
 
 
 ww
 "https://api.themoviedb.org/3/movie/popular?api_key=e92bd2006a37916787ee8e41cf61153a&language=en-US&page=1"
 
 */

class ViewModelMovies {
    
    
    
}

