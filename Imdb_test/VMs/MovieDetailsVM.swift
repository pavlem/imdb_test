//
//  MovieDetailsVM.swift
//  Imdb_test
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

struct MovieDetailsVM {
    let title: String
    let overview: String
    let posterPath: String
    
    let description = "Description"
    
    var imgURL: URL { return URL.imageCellOriginalURL(posterPath) }
}

extension MovieDetailsVM {
    init(movieCellVM: MovieCellVM) {
        self.title = movieCellVM.title
        self.overview = movieCellVM.overview
        self.posterPath = movieCellVM.posterPath
    }
}
