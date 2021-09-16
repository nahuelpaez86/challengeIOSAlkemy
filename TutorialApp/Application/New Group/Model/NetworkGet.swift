//
//  NetworkGet.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 15/09/2021.
//

import Foundation
import Alamofire


//enum NetWorkClient {
//    enum NetWorkingError: Error {
//        case parsingError
//    }
//
//    static func getUsers(completion: @escaping (Result<[Movie], Error>)->Void) {
//        let request = AF.request("https://api.themoviedb.org/3/movie/popular?api_key=e92bd2006a37916787ee8e41cf61153a&language=en-US&page=1", method: HTTPMethod.get)
//        request.responseData{ (response : AFDataResponse<Data>) in
//            guard let data = response.data else { completion(.failure(NetWorkingError.parsingError))
//                return
//            }
//
//            let decoder = JSONDecoder()
//            let movies = try? decoder.decode([Movie].self, from: data)
//
//            completion(.success(movies ?? [] ))
//
//
//        }
//    }
//}
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
