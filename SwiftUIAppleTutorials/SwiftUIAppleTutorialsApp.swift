//
//  SwiftUIAppleTutorialsApp.swift
//  SwiftUIAppleTutorials
//
//  Created by minimani on 2022/09/22.
//

import SwiftUI

@main
struct SwiftUIAppleTutorialsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
