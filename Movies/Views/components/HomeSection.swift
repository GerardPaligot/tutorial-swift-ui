//
//  HomeSection.swift
//  Movies
//
//  Created by GERARD on 27/03/2021.
//

import SwiftUI

struct HomeSection<Content: View>: View {
    var title: String
    let content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

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
            content
        }
    }
}

struct HomeSection_Previews: PreviewProvider {
    static var previews: some View {
        HomeSection(title: "Popular") {
            HPoster(movies: ModelData().movies) {
                Poster(posterUrl: $0.poster, elevation: 2)
            }
        }
    }
}
