//
//  ContentView.swift
//  AsyncImageDemo
//
//  Created by Abhishek Gupta on 07/03/25.
//

import SwiftUI

struct ContentView: View {
    
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            
            switch phase {
            case .empty:
                Image(systemName: "photo.circle.fill")
                    .iconModifiers()
            case .success(let image):
                image.imageModifiers()
                    .transition(.move(edge: .bottom))
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifiers()
            @unknown default:
                ProgressView()
            }
            
        }
        .padding(40)
    }
}

#Preview {
    ContentView()
}
