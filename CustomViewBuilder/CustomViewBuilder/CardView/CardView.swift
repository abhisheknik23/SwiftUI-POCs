//
//  CardView.swift
//  CustomViewBuilder
//
//  Created by Abhishek Gupta on 11/12/24.
//

import SwiftUI

struct CardView<Content: View>: View {
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.title = title
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
                .padding(.bottom, 5)
            VStack {
                content
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 4)
        }
    }
}
