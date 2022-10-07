//
//  MoviesVM.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 7.10.22..
//

import Foundation

class MoviesVM: ObservableObject {
    
    @Published var movieCells = [MovieCellVM]()
    @Published var isLoading = true
    
    let loadingText = "Loading...."
    let navTitle = "Movies"

    private let model = MoviesModel(api: MoviesNetworkingAPI())
    
    init() {
        model.fetchMovies { result in
            
            switch result {
            case .success(let movies):
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.movieCells = movies
                    self.isLoading = false
                }
            case .failure(let err):
                print(err)
            }
        }
    }
}
