//
//  Home.swift
//  Movies
//
//  Created by GERARD on 27/03/2021.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject private var modelData: ModelData
    
    var body: some View {
        let background: Color = .background
        NavigationView {
            ScrollView {
                LazyVStack {
                    HomeSection(title: "Upcoming", movies: modelData.movies)
                    HomeSection(title: "Popular", movies: modelData.movies)
                    HomeSection(title: "Trending", movies: modelData.movies)
                }
                .padding(.top)
            }
            .background(background.edgesIgnoringSafeArea(.all))
            .navigationBarTitle("Discovering Movies", displayMode: .inline)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(ModelData())
    }
}
