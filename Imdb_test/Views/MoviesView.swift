//
//  ContentView.swift
//  MoviesSwiftUI
//
//  Created by Pavle Mijatovic on 6.10.22..
//
import SwiftUI
import URLImage

struct MoviesView: View {
    
    @ObservedObject var vm: MoviesVM = MoviesVM()
    
    var body: some View {
        NavigationView {
            VStack {
                if vm.isLoading {
                    Text(vm.loadingText)
                } else {
                    List(vm.movieCells, id: \.self) { movie in
                        NavigationLink(destination: MovieDetailsView(
                            
                            vm: MovieDetailsVM(movieCellVM: movie))) {
                                MovieCell(vm: movie)
                            }
                    }
                }
            }
            .navigationTitle(vm.navTitle)
        }
    }
}
