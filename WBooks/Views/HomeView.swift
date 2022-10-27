//
//  HomeView.swift
//  WBooks
//
//  Created by Cristian Romero on 27/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            BookList()
                .tabItem {
                    Image("ic_library")
                        .renderingMode(.template)
                    Text("Library")
                }
            
            Text("Wishlist")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image("ic_wishlist")
                        .renderingMode(.template)
                    Text("Wishlist")
                }
            
            Text("Suggest")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image("ic_add_new")
                        .renderingMode(.template)
                    Text("Suggest")
                }
            
            Text("Rentals")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image("ic_myrentals")
                        .renderingMode(.template)
                    Text("Rentals")
                }
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
