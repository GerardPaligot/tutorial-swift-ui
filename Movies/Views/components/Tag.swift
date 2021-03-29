//
//  Tag.swift
//  Movies
//
//  Created by GERARD on 28/03/2021.
//

import SwiftUI

struct Tag: View {
    var tagName: String

    var body: some View {
        let borderColor: Color = .onBackground
        let font: Font = .mdCaption
        Text(tagName)
            .font(font)
            .foregroundColor(borderColor.opacity(0.5))
            .padding(.horizontal, 10)
            .padding(.vertical, 2)
            .overlay(
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(borderColor.opacity(0.5), lineWidth: 1.0)
            )
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(tagName: "Thriller")
    }
}
