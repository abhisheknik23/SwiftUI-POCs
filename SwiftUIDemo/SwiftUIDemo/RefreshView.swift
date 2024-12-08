//
//  RefreshView.swift
//  SwiftUIDemo
//
//  Created by Abhishek Gupta on 22/05/24.
//

import SwiftUI

struct RefreshView: View {
    
    @State private var items: [String] = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                Text(item)
            }
            .refreshable {
                await refreshItems()
            }
        }        
    }
    
    private func refreshItems() async {
        try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        
        items.append(contentsOf: ["New Item 1", "New Item 2", "New Item 3"])
    }
}

#Preview {
    RefreshView()
}
