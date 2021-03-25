//
//  MovieRow.swift
//  Movies
//
//  Created by GERARD on 24/03/2021.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            movie.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(movie.name)
            Spacer()
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MovieRow(movie: movies[0])
            MovieRow(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
