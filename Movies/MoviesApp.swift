//
//  MoviesApp.swift
//  Movies
//
//  Created by GERARD on 24/03/2021.
//

import SwiftUI

@main
struct MoviesApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
