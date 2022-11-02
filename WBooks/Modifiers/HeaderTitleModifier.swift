//
//  HeaderTitleModifier.swift
//  WBooks
//
//  Created by Cristian Romero on 2/11/22.
//

import Foundation
import SwiftUI

struct HeaderTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 30, weight: .bold, design: .rounded))
    }
}
