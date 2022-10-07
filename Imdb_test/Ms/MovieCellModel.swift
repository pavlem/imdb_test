//
//  MovieCellModel.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

struct MovieCellModel: Hashable, Identifiable {
    
    let id: Int
    let title: String
    let voteAverage: Float
    let voteCount: Int
    let popularity: Float
    let releaseDate: String
    let posterPath: String
    let overview: String
}

extension MovieCellModel {
    init(movieResponse: MovieResponse) {
        self.id = movieResponse.id
        self.title = movieResponse.title
        self.voteAverage = movieResponse.voteAverage
        self.voteCount = movieResponse.voteCount
        self.popularity = movieResponse.popularity
        self.releaseDate = movieResponse.releaseDate
        self.posterPath = movieResponse.posterPath
        self.overview = movieResponse.overview
    }
}
