//
//  ContentView.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct ContentView: View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
