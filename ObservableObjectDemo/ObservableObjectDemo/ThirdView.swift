//
//  ThirdView.swift
//  ObservableObjectDemo
//
//  Created by Abhishek Gupta on 10/02/23.
//

import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject var user: User
    @EnvironmentObject var account: Account
    
    var body: some View {
        Text("User Name is = \(user.name) with account balance = \(account.amountBalance)")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(User())
            .environmentObject(Account())
    }
}
