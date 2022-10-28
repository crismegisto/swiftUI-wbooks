//
//  BookList.swift
//  WBooks
//
//  Created by Cristian Romero on 24/10/22.
//

import SwiftUI

struct BookList: View {    
    var body: some View {
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
        .listStyle(GroupedListStyle())
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                IconButton("ic_notifications")
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                IconButton("ic_search")
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
    }
}
