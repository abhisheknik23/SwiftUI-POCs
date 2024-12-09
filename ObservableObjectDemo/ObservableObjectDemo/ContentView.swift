//
//  ContentView.swift
//  ObservableObjectDemo
//
//  Created by Abhishek Gupta on 10/02/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user: User = User()
    @ObservedObject private var account: Account = Account()
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to ObservableObject Demo")
                    .font(.body)
                    .fontWeight(.heavy)
                Text("User name is \(user.name)")
                    .font(.title2)
                TextField("user", text: $user.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                NavigationLink("Navigate to Second View", destination: SecondView())
            }
            .padding()
            .navigationBarTitle("Environment Object")
        }.environmentObject(user)
            .environmentObject(account)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
