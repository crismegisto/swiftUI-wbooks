//
//  CustomButton.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct CustomButton: View {
    var buttonName: String = "Custom Button"
    var body: some View {
        Text(buttonName)
            .foregroundColor(.white)
            .frame(width: 160, height: 60)
            .background(.blue)
            .cornerRadius(10)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
