//
//  BookCard.swift
//  WBooks
//
//  Created by Cristian Romero on 25/10/22.
//

import SwiftUI

struct BookCard: View {
    let DEFAULT_SPACE = 20.0
    var book: Book
    
    var body: some View {
        HStack(alignment: .top, spacing: DEFAULT_SPACE) {
            book.image
                .resizable()
                .frame(width: 50, height: 80)
                .padding(.vertical, DEFAULT_SPACE)
                .padding(.leading, DEFAULT_SPACE*1.5)
            
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                    .bold()
                Text(book.author)
                    .font(.subheadline)
            }
            .padding(.vertical, DEFAULT_SPACE)
            
            Spacer()
        }
        .background(.white)
        .cornerRadius(10)
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: books[0])
    }
}
