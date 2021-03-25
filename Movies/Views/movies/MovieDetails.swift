//
//  MovieDetails.swift
//  Movies
//
//  Created by GERARD on 24/03/2021.
//

import SwiftUI

struct MovieDetails: View {
    @EnvironmentObject private var modelData: ModelData
    var movie: Movie
    var movieIndex: Int {
        modelData.movies.firstIndex(where: {$0.id == movie.id})!
    }

    var body: some View {
        ScrollView {
            MapView(coordinate: movie.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: movie.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(movie.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.movies[movieIndex].isFavorite)
                }
                HStack {
                    Text(movie.park)
                    Spacer()
                    Text(movie.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About \(movie.name)")
                    .font(.title2)
                Text(movie.description)
            }
            .padding()
        }
        .navigationTitle(movie.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails(movie: ModelData().movies[0])
    }
}
