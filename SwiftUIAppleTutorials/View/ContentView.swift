//
//  ContentView.swift
//  SwiftUIAppleTutorials
//
//  Created by minimani on 2022/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
