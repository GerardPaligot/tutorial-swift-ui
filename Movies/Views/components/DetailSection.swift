//
//  DetailSection.swift
//  Movies
//
//  Created by GERARD on 28/03/2021.
//

import SwiftUI

struct DetailSection<Content: View>: View {
    var title: String
    let content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.mdOverline)
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .padding(.bottom, 1)
            content
        }
    }
}

struct DetailSection_Previews: PreviewProvider {
    static var previews: some View {
        DetailSection(title: "Overview") {
            Text("Hello world")
        }
    }
}
