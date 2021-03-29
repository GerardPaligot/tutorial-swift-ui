//
//  MovieMetadata.swift
//  Movies
//
//  Created by GERARD on 28/03/2021.
//

import SwiftUI

struct MovieMetadata: View {
    var posterUrl: String
    var rating: Int
    var elevation: CGFloat
    var title: String
    var genres: [String]
    var yearDate: String
    var runtime: Int

    var body: some View {
        let time = "\(runtime / 60)h \(runtime % 60)min"
        HStack {
            PosterNoted(posterUrl: posterUrl, rating: rating, elevation: elevation)
                .aspectRatio(0.7, contentMode: .fit)
                .frame(width: 130)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.h6)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .truncationMode(.tail)
                HStack(spacing: 0) {
                    ForEach(genres, id: \.self) { genre in
                        Tag(tagName: genre)
                    }
                }
                Text("\(yearDate) - \(time)")
            }
            .offset(x: -20, y: 15)
            .padding(.trailing, -20)
            .padding(.top, -15)
            Spacer()
        }
    }
}

struct MovieMetadata_Previews: PreviewProvider {
    static var previews: some View {
        MovieMetadata(
            posterUrl: "https://www.themoviedb.org/t/p/w220_and_h330_face/z0dCL02iHKSliNjNVMRwWIcCt0T.jpg",
            rating: 86,
            elevation: 2.0,
            title: "Joker",
            genres: ["Crime", "Thriller", "Drama"],
            yearDate: "2019",
            runtime: 140
        )
    }
}
