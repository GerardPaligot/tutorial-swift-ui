//
//  HomeSection.swift
//  Movies
//
//  Created by GERARD on 27/03/2021.
//

import SwiftUI

struct HomeSection: View {
    var title: String
    var movies: [Movie]
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundColor(.onBackground)
                    .font(.subtitle1)
                Spacer()
            }
            .padding(.leading)
            .padding(.bottom, 0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 8) {
                    ForEach(movies.indices) { index in
                        let movie = movies[index]
                        let firstPadding = index == 0 ? CGFloat(16.0) : CGFloat(0.0)
                        Poster(
                            posterUrl: movie.poster,
                            elevation: 2
                        )
                        .frame(width: 120, height: 180)
                        .padding(.leading, firstPadding)
                    }
                }
            }
            .frame(height: 190)
        }
    }
}

struct HomeSection_Previews: PreviewProvider {
    static var previews: some View {
        HomeSection(title: "Popular", movies: ModelData().movies)
    }
}
