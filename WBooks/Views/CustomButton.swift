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
    
    init(_ buttonName: String, action: @escaping () -> Void = {}){
        self.buttonName = buttonName
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(buttonName)
                .foregroundColor(.white)
                .frame(width: 160, height: 60)
                .background(Color.wCyan)
                .cornerRadius(10)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton("Custom Button")
    }
}
