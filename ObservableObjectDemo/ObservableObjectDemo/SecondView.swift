//
//  SecondView.swift
//  ObservableObjectDemo
//
//  Created by Abhishek Gupta on 10/02/23.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject var account: Account
    
    
    var body: some View {
        VStack {
            ColorPicker("Color", selection: .constant(.red))
            /*TextField("Account Balance", value: $account.$amountBalance, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())*/
            Stepper("Balance \(account.amountBalance)", value: $account.amountBalance)
            NavigationLink("Navigate to Third View", destination: ThirdView())
        }.padding()
           
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(Account())
    }
}
