//
//  URL+API.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

extension URL {
    static let apiKey = "96041f826a92d167e44bc28be53f72e0"
    static let apiUrlBase = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key="
    static let moviesURL = URL(string: apiUrlBase + apiKey)!
    static let baseImageUrl = "https://image.tmdb.org/t/p/w200/"
    static let baseOriginalImageUrl = "https://image.tmdb.org/t/p/original/"

    static func imageCellURL(_ imagePath: String) -> URL { URL(string: baseImageUrl + imagePath)! }
    
    
    static func imageCellOriginalURL(_ imagePath: String) -> URL { URL(string: baseImageUrl + imagePath)! }

}
