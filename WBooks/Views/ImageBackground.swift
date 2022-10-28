//
//  ImageBackground.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct ImageBackground: View {
    var body: some View {
        Image("bc_inicio")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ImageBackground_Previews: PreviewProvider {
    static var previews: some View {
        ImageBackground()
    }
}
