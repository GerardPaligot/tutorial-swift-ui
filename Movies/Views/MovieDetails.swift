//
//  MovieDetails.swift
//  Movies
//
//  Created by GERARD on 24/03/2021.
//

import SwiftUI

struct MovieDetails: View {
    var movie: Movie

    var body: some View {
        ScrollView {
            MapView(coordinate: movie.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: movie.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(movie.name)
                    .font(.title)
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
        MovieDetails(movie: movies[0])
    }
}
