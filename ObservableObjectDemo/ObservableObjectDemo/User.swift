//
//  User.swift
//  ObservableObjectDemo
//
//  Created by Abhishek Gupta on 10/02/23.
//

import Foundation

class User: ObservableObject {
   @Published var name: String = String()
}

class Account: ObservableObject {
    
    @Published var amountBalance: Double = 0.0
}

