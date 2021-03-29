//
//  HPoster.swift
//  Movies
//
//  Created by GERARD on 28/03/2021.
//

import SwiftUI

struct HPoster<Content: View>: View {
    var movies: [Movie]
    let content: (Movie) -> Content

    init(movies: [Movie], @ViewBuilder content: @escaping (Movie) -> Content) {
        self.movies = movies
        self.content = content
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 8) {
                ForEach(movies.indices) { index in
                    let movie = movies[index]
                    let firstPadding = index == 0 ? CGFloat(16.0) : CGFloat(0.0)
                    content(movie)
                        .frame(width: 120, height: 180)
                        .padding(.leading, firstPadding)
                }
            }
        }
        .frame(height: 190)
    }
}

struct HPoster_Previews: PreviewProvider {
    static var previews: some View {
        HPoster(movies: ModelData().movies) { (movie) in
            Poster(posterUrl: movie.poster, elevation: 2)
        }
    }
}
