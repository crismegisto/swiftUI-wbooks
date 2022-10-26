//
//  BookList.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct BookList: View {
    var body: some View {
        NavigationView {
            List(books) { book in
                BookCard(book: book)
                    .listRowBackground(ZStack {
                        Color(red: 0.7647058823529411, green: 0.8745098039215686, blue: 0.9607843137254902)
                        
                    })
                    .listRowSeparator(.hidden)
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
