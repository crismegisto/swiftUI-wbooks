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
                    .listRowBackground(
                        Color(red: 0.7647058823529411, green: 0.8745098039215686, blue: 0.9607843137254902)
                    )
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
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
