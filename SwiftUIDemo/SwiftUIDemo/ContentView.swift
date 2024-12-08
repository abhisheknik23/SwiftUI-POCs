//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Abhishek Gupta on 14/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = String()
    
    var body: some View {
        VStack {
            /*Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!").font(.largeTitle)*/
            TextField("username", text: $name)
            Button {
                debugPrint("Hello \(self.name)")
            } label: {
                Text("Login")
            }.disabled(name.count < 4)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
