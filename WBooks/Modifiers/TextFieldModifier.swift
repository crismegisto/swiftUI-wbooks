//
//  File.swift
//  WBooks
//
//  Created by Cristian Romero on 25/10/22.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 0.5)
            )
            .background(Color.white.cornerRadius(10))
            .padding(.horizontal, 10)
            .padding()
    }
}
