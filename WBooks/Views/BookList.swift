//
//  BookList.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct BookList: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.backgroundColor = UIColor(Color(hue: 0.558, saturation: 0.735, brightness: 0.949)
        )
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
        NavigationView {
            List(books) { book in
                BookCard(book: book)
                    .listRowBackground(ZStack {
                        Color.wLightBlue.ignoresSafeArea()
                        
                    })
                    .listRowSeparator(.hidden)
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("LIBRARY")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    IconButton("ic_notifications", action: {
                        print("iconButton pressed")
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    IconButton("ic_search", action: {
                        print("iconButton pressed")
                    })
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
