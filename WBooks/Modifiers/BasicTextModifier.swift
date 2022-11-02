//
//  BasicTextModifier.swift
//  WBooks
//
//  Created by Cristian Romero on 2/11/22.
//

import Foundation
import SwiftUI

struct BasicTextModifier: ViewModifier {
    var size: CGFloat = 16
    var color: Color = .black
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: .bold, design: .rounded))
            .foregroundColor(color)
    }
}
