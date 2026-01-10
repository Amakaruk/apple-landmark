//
//  AppleLandmarkApp.swift
//  AppleLandmark
//
//  Created by Aaron Makaruk on 1/9/26.
//

import SwiftUI

@main
struct AppleLandmarkApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
