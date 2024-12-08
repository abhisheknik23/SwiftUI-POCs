//
//  ContentView.swift
//  BindingDemo
//
//  Created by Abhishek Gupta on 10/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Text("Binding Demo").font(.title).foregroundColor(isOn ? .blue : .gray)
            ToggleView(isOn: $isOn)
           
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
