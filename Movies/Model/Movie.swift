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
    var poster: String
}

struct MovieDetail: Hashable, Codable {
    var title: String
    var overview: String
    var backdrop: String
    var poster: String
    var voteAverage: Int
    var genres: [String]
    var yearDate: String
    var runtime: Int
    var actors: [Actor]
    var recommendations: [Movie]
    var similar: [Movie]
}

struct Actor: Hashable, Codable {
    var name: String
    var character: String
    var profilePath: String
}
