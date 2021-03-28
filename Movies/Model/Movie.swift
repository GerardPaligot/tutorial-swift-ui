//
//  Movie.swift
//  Movies
//
//  Created by GERARD on 24/03/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var overview: String
    var backdrop: String
    var poster: String
}
