//
//  Backdrop.swift
//  Movies
//
//  Created by GERARD on 28/03/2021.
//

import SwiftUI

struct Backdrop: View {
    var backdropUrl: String
    
    @State private var imageData: ImageData? = nil
    
    private func updateImageData(url: String) {
        imageData = ImageData(url: url)
        imageData!.downloadImage()
    }
    
    var body: some View {
        ZStack {
            if self.imageData != nil && self.imageData!.image != nil {
                Image(uiImage: self.imageData!.image!)
                    .resizable()
                    .scaledToFill()
            } else {
                Rectangle()
                    .foregroundColor(.background)
            }
        }
        .frame(height: 300)
        .onAppear {
            updateImageData(url: backdropUrl)
        }
    }
}

struct Backdrop_Previews: PreviewProvider {
    static var previews: some View {
        Backdrop(
            backdropUrl: "https://image.tmdb.org/t/p/w780/n6bUvigpRFqSwmPp1m2YADdbRBc.jpg"
        )
    }
}
