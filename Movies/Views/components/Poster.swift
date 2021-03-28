//
//  PosterNoted.swift
//  Movies
//
//  Created by GERARD on 28/03/2021.
//

import SwiftUI

struct Poster: View {
    var posterUrl: String
    var elevation: CGFloat

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
                    .cornerRadius(8.0)
                    .shadow(radius: elevation)
            } else {
                Rectangle()
                    .foregroundColor(.surface)
                    .cornerRadius(8.0)
                    .shadow(radius: elevation)
            }
        }.onAppear {
            updateImageData(url: posterUrl)
        }
    }
}

struct Poster_Previews: PreviewProvider {
    static var previews: some View {
        Poster(
            posterUrl: "https://www.themoviedb.org/t/p/w220_and_h330_face/z0dCL02iHKSliNjNVMRwWIcCt0T.jpg",
            elevation: 0
        )
    }
}
