//
//  MovieList.swift
//  Movies
//
//  Created by GERARD on 24/03/2021.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject private var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var moviesFiltered: [Movie] {
        modelData.movies.filter { movie in
            (!showFavoritesOnly || movie.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })
                ForEach(moviesFiltered) { movie in
                    NavigationLink(destination: MovieDetails(movie: movie)) {
                        MovieRow(movie: movie)
                    }
                }
            }
            .navigationTitle("Movies")
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
            .environmentObject(ModelData())
    }
}
