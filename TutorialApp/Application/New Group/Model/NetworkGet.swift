//
//  NetworkGet.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 15/09/2021.
//

import Foundation
import Alamofire

final class ApiGet {
    static let baseUrl = "https://api.themoviedb.org/3/movie/popular?api_key=e92bd2006a37916787ee8e41cf61153a"
    
    static func getMovies(page: Int, completionHandler: @escaping ([Movie])->Void){
        let request = AF.request("\(baseUrl)&language=en-US&\(page)")
        request.responseData{ response in
           switch response.result {
            case .success(let data):
                 let page = try! JSONDecoder().decode(MoviePage.self, from: data)
                 completionHandler(page.movies)
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}
