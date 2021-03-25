//
//  MovieList.swift
//  Movies
//
//  Created by GERARD on 24/03/2021.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
        NavigationView {
            List(movies) { movie in
                NavigationLink(destination: MovieDetails(movie: movie)) {
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle("Movies")
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
