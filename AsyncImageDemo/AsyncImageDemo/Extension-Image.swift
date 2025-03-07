//
//  Extension-Image.swift
//  AsyncImageDemo
//
//  Created by Abhishek Gupta on 07/03/25.
//

import Foundation
import SwiftUI

extension Image {
    func imageModifiers() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifiers() -> some View {
        self
            .imageModifiers()
            .frame(maxWidth: 128)
            .foregroundStyle(Color.purple)
            .opacity(0.5)
    }
}
