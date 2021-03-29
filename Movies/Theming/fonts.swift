//
//  Font.swift
//  Movies
//
//  Created by GERARD on 27/03/2021.
//

import SwiftUI

extension Font {
    static let h5 = Font.system(size: 24).weight(.bold)
    static let h6 = Font.system(size: 20).weight(.bold)
    static let subtitle1 = Font.system(size: 16).weight(.bold)
    static let body1 = Font.system(size: 16).weight(.regular)
    static let mdCaption = Font.system(size: 10).weight(.medium)
    static let mdOverline = Font.system(size: 14).weight(.bold).smallCaps()
}
