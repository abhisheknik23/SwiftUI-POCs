//
//  ContentView.swift
//  StackDemo
//
//  Created by Abhishek Gupta on 14/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = String()
    @State private var password: String = String()
    var body: some View {
        VStack {
            Text("Login").font(.largeTitle).padding()
            Text("Exploring SwiftUI").font(.subheadline).padding()
            TextField("UserName", text: $name)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
            SecureField("password", text: $password)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
            HStack {
                Button {
                    debugPrint("Login Tapped")
                } label: {
                    Text("Login")
                }
                
                Spacer()
                
                Button {
                    debugPrint("Forgot Password Tapped")
                } label: {
                    Text("Forgot Password")
                }
                

            }.padding()
        }.padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
