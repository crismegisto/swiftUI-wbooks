//
//  IconButton.swift
//  WBooks
//
//  Created by Cristian Romero on 26/10/22.
//

import SwiftUI

struct IconButton: View {
    let iconName: String
    let action: () -> Void
    private var icon: Image {
        Image(iconName)
    }
    
    init(_ buttonName: String, action: @escaping () -> Void){
        self.iconName = buttonName
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            icon
                .resizable()
                .frame(width: 24, height: 24)
        }
    }
}

struct IconButton_Previews: PreviewProvider {
    static var mockAction : () -> Void = { }
    
    static var previews: some View {
        IconButton("ic_search_placeholder", action: mockAction)
    }
}

