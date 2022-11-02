//
//  HomeView.swift
//  WBooks
//
//  Created by Cristian Romero on 27/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            TabView {
                BookList()
                    .tabItem {
                        Image("ic_library")
                            .renderingMode(.template)
                        Text("Library")
                    }
                
                Text("Wishlist")
                    .modifier(HeaderTitleModifier())
                    .tabItem {
                        Image("ic_wishlist")
                            .renderingMode(.template)
                        Text("Wishlist")
                    }
                
                Text("Suggest")
                    .modifier(HeaderTitleModifier())
                    .tabItem {
                        Image("ic_add_new")
                            .renderingMode(.template)
                        Text("Suggest")
                    }
                
                Text("Rentals")
                    .modifier(HeaderTitleModifier())
                    .tabItem {
                        Image("ic_myrentals")
                            .renderingMode(.template)
                        Text("Rentals")
                    }
            }
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
            .navigationBarTitle("LIBRARY")
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
