//
//  CustomButton.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct CustomButton: View {
    let buttonName: String
    let action: () -> Void
    let solid: Bool
    
    init(_ buttonName: String, solid: Bool = false, action: @escaping () -> Void = {}){
        self.buttonName = buttonName
        self.solid = solid
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(buttonName)
                .fontWeight(.bold)
                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 44)
                .if(!solid) { view in
                    view
                        .background(Color.white)
                        .foregroundColor(Color.wBlue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.wBlue, lineWidth: 3)
                        )
                }
                .background(Color.wCyan)
                .foregroundColor(.white)
                .cornerRadius(30)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton("Custom Button")
    }
}
