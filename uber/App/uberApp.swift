//
//  uberApp.swift
//  uber
//
//  Created by sasharomanes on 22.01.2024.
//

import SwiftUI

@main
struct uberApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
