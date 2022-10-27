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
        coloredAppearance.backgroundColor = UIColor(Color.wBlue)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
            List(books) { book in
                BookCard(book: book)
                    .listRowBackground(ZStack {
                        Color.wLightBlue.ignoresSafeArea()
                        
                    })
                    .listRowSeparator(.hidden)
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
        }
    }
    
    struct BookList_Previews: PreviewProvider {
        static var previews: some View {
            BookList()
        }
    }
