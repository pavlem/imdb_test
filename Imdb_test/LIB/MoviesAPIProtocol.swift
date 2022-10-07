//
//  MoviesAPIProtocol.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

protocol MoviesAPIProtocol {
    func getMovies(completion:  @escaping (Result<[MovieCellVM], Error>) -> Void)
}
