//
//  Rating.swift
//  Movies
//
//  Created by GERARD on 27/03/2021.
//

import SwiftUI

struct Rating: View {
    var percent: Int
    
    var body: some View {
        GeometryReader { (geometry) in
            ZStack {
                let largestSize = geometry.size.width > geometry.size.height ? geometry.size.width : geometry.size.height
                Circle()
                    .foregroundColor(.ratingBackground)
                Text("\(percent)")
                    .foregroundColor(.onPrimary)
                    .font(Font.system(size: 0.24 * largestSize).weight(.bold))
            }
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating(percent: 54)
    }
}
