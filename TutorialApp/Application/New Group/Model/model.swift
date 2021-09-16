//
//  model.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 15/09/2021.
//

import Foundation


struct Movie: Codable {
    let title : String
    let id : Int
    var poster: String
    let year : String
    let overview : String
    let language : String
    let popularity : Double
    
    private enum CodingKeys : String ,CodingKey {
        case title = "title"
        case id = "id"
        case poster = "poster_path"
        case year = "release_date"
        case overview = "overview"
        case language = "original_language"
        case popularity = "popularity"}
}


struct MoviePage: Codable {
    let movies : [Movie]
    
    private enum CodingKeys: String,CodingKey {
        case movies = "results"
    }
}
