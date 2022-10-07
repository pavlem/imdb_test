//
//  MovieResponse.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

struct MovieResponse: Decodable {
    var id: Int
    var voteCount: Int
    var voteAverage: Float
    var title: String
    var posterPath: String
    var originalLanguage: String
    var originalTitle: String
    var adult: Bool
    var overview: String
    var releaseDate: String
    var popularity: Float
}
