//
//  MoviesNetworkingAPI.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

struct MoviesNetworkingAPI: MoviesAPIProtocol {
    func getMovies(completion: @escaping (Result<[MovieCellVM], Error>) -> Void) {
        fetchData(url: URL.moviesURL) { (result: Result<MovieListResponse, Error>) in
            switch result {
            case .success(let success):
                let movieCellModels = success.results.map { MovieCellModel(movieResponse: $0) }
                let movieCellVMs = movieCellModels.map { MovieCellVM(model: $0) }
                completion(.success(movieCellVMs))
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    private func fetchData<T: Decodable>(url: URL, completion: @escaping ((Result<T, Error>) -> Void)) {
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let err = error {
                completion(.failure(err))
                return
            }
            guard let data = data else {
                completion(.failure(CocoaError.coderInvalidValue as! Error))
                return
            }
            do {
                let jsonDecoder = JSONDecoder()
                jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                let obj = try jsonDecoder.decode(T.self, from: data)
                completion(.success(obj))
            } catch let jsonErr {
                print(jsonErr)
            }
        }.resume()
    }
}
