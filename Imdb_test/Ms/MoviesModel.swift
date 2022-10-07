//
//  MoviesModel.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

struct MoviesModel {
    
    let api: MoviesAPIProtocol
    
    func fetchMovies(completion: @escaping (Result<[MovieCellVM], Error>) -> Void) {
        api.getMovies { result in
            completion(result)
        }
    }
}
