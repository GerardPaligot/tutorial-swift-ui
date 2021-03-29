//
//  MovieDetails.swift
//  Movies
//
//  Created by GERARD on 28/03/2021.
//

import SwiftUI

struct MovieDetails: View {
    @EnvironmentObject private var modelData: ModelData
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Backdrop(backdropUrl: modelData.movie.backdrop)
            ScrollView(showsIndicators: false) {
                ScrollViewMovieDetails(movie: modelData.movie)
            }
        }
    }
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails()
            .environmentObject(ModelData())
    }
}
