//
//  AppView.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct AppView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: BookList(), isActive: $isActive) { EmptyView() }
                LoginForm(isValid: $isActive)
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
