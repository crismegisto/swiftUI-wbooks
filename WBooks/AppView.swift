//
//  AppView.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        ZStack {
            ImageBackground()
            
            VStack {
                LoginForm()
            }
            .padding()
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

struct ImageBackground: View {
    var body: some View {
        Image("bc_inicio")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}
