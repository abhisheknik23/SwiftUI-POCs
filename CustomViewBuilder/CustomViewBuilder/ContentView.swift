//
//  ContentView.swift
//  CustomViewBuilder
//
//  Created by Abhishek Gupta on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(title: "Custom Card View") {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
