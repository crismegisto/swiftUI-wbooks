//
//  BookList.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct BookList: View {    
    var body: some View {
        ZStack {
            Color.wLightBlue.ignoresSafeArea()
            List(books) { book in
                BookCard(book: book)
                    .listRowBackground(ZStack {
                        Color.wLightBlue.ignoresSafeArea()
                    })
                    .listRowSeparator(.hidden)
                    .overlay(NavigationLink(destination: ContentBookDetail(book: book), label: {
                        EmptyView()
                    }).opacity(0))
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
