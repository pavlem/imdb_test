//
//  MovieDetailsView.swift
//  Imdb_test
//
//  Created by Pavle Mijatovic on 7.10.22..
//
import SwiftUI
import URLImage

struct MovieDetailsView: View {
    
    let vm: MovieDetailsVM
    
    var body: some View {
        VStack {
            URLImage(vm.imgURL, delay: 0.25) {proxy in
                proxy.image.resizable()
                    .frame(width: UIScreen.main.bounds.height/8*3, height: UIScreen.main.bounds.height/2)
            }
            HStack {
                Text(vm.description).foregroundColor(.gray)
                Spacer()
            }
            Text(vm.overview).lineLimit(nil)
            Spacer()
        }.navigationBarTitle(Text(vm.title), displayMode: .inline)
            .padding()
    }
}
