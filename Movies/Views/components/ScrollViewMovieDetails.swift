//
//  ScrollViewMovieDetails.swift
//  Movies
//
//  Created by GERARD on 29/03/2021.
//

import SwiftUI

struct ScrollViewMovieDetails: View {
    var movie: MovieDetail
    
    var body: some View {
        let surfaceColor: Color = .surface
        LazyVStack {
            ZStack {
                Rectangle()
                    .fill(surfaceColor)
                    .cornerRadius(25, corners: [.topLeft, .topRight])
                    .shadow(radius: 5)
                VStack {
                    MovieMetadata(
                        posterUrl: movie.poster,
                        rating: movie.voteAverage,
                        elevation: 0,
                        title: movie.title,
                        genres: movie.genres,
                        yearDate: movie.yearDate,
                        runtime: movie.runtime
                    )
                    .offset(y: -50)
                    .padding(.bottom, -50)
                    .padding(.leading, 16)
                    DetailSection(title: "Overview") {
                        Text(movie.overview)
                            .padding(.leading, 16)
                            .padding(.trailing, 16)
                    }
                    DetailSection(title: "Recommendations") {
                        HPoster(movies: movie.recommendations) { (movie) in
                            Poster(posterUrl: movie.poster, elevation: 2)
                        }
                    }
                    .padding(.top, 8)
                    DetailSection(title: "Similars") {
                        HPoster(movies: movie.similar) { (movie) in
                            Poster(posterUrl: movie.poster, elevation: 2)
                        }
                    }
                    .padding(.top, 8)
                }
            }
        }
        .padding(.top, 250)
    }
}

struct ScrollViewMovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewMovieDetails(movie: ModelData().movie)
    }
}
