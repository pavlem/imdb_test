//
//  MovieCell.swift
//  Imdb_test
//
//  Created by Pavle Mijatovic on 7.10.22..
//
import SwiftUI
import URLImage

struct MovieCell: View {
    
    let vm: MovieCellVM
    
    var body: some View {
        
        HStack {
            URLImage(vm.imageCellURL, delay: 0.25) { proxy in
                proxy.image.resizable()
                    .frame(width: 90, height: 120)
            }
            VStack {
                Spacer()
                HStack {
                    Text(vm.title)
                        .foregroundColor(.blue)
                        .lineLimit(nil)
                    Spacer()
                }
                HStack {
                    Text(vm.releaseDate).foregroundColor(.gray)
                    Spacer()
                    Text(vm.voteAverage)
                }
                HStack {
                    Text(vm.voteCount)
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                    Spacer()
                }
                HStack {
                    Text(vm.popularity)
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                    Spacer()
                }
                Spacer()
            }
        }.frame(height: 130)
    }
}
