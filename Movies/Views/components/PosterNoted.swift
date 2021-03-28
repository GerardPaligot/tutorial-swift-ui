//
//  Poster.swift
//  Movies
//
//  Created by GERARD on 27/03/2021.
//

import SwiftUI

struct PosterNoted: View {
    var posterUrl: String
    var rating: Int
    var elevation: CGFloat
    
    var body: some View {
        GeometryReader { (geometry) in
            let ratingSize = geometry.size.width / 6
            let posterWidth = geometry.size.width - ratingSize
            let posterHeight = geometry.size.height - ratingSize
            ZStack(alignment: .topLeading) {
                VStack {
                    Spacer()
                    Poster(posterUrl: posterUrl, elevation: elevation)
                        .frame(width: posterWidth, height: posterHeight)
                }
                HStack {
                    Spacer()
                    Rating(percent: rating)
                        .frame(width: ratingSize * 2, height: ratingSize * 2)
                }
            }
        }
    }
}

struct PosterNoted_Previews: PreviewProvider {
    static var previews: some View {
        PosterNoted(
            posterUrl: "https://www.themoviedb.org/t/p/w220_and_h330_face/z0dCL02iHKSliNjNVMRwWIcCt0T.jpg",
            rating: 86,
            elevation: 2.0
        )
    }
}
