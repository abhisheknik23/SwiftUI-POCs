//
//  ToggleView.swift
//  BindingDemo
//
//  Created by Abhishek Gupta on 10/02/23.
//

import SwiftUI

struct ToggleView: View {
    @Binding var isOn: Bool
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text("is working")
            }.fixedSize()
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView(isOn: .constant(false))
    }
}
