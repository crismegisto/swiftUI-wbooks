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
                        Color.wLightBlue.ignoresSafeArea()
                        
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
