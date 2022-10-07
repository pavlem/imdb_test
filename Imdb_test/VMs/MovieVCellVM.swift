//
//  File.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

struct MovieCellVM: Hashable, Identifiable {
    
    var id: Int { return model.id }
    var voteAverage: String { return "Rate: \(model.voteAverage.format())" }
    var voteCount: String { return "Vote count: \(model.voteCount)" }
    var popularity: String { return "Popularity: \(model.popularity)" }
    var title: String { return model.title }
    var overview: String  { return model.overview }
    var releaseDate: String { return model.releaseDate }
    var posterPath: String { return model.posterPath}
    var imageCellURL: URL { URL.imageCellURL(self.posterPath) }

    private let model: MovieCellModel

    init(model: MovieCellModel) {
        self.model = model
    }
}

extension Float {
    func format() -> String {
        return String(format: "%.2f",self)
    }
}
