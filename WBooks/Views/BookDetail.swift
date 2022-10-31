//
//  BookDetail.swift
//  WBooks
//
//  Created by Cristian Romero on 28/10/22.
//

import SwiftUI

struct BookDetail: View {
    let DEFAULT_SPACE = 20.0
    var book: Book
    
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: DEFAULT_SPACE) {
                book.image
                    .resizable()
                    .frame(width: 70, height: 100)
                    .padding(.vertical, DEFAULT_SPACE)
                    .padding(.leading, DEFAULT_SPACE*1.5)
                
                VStack(alignment: .leading) {
                    Text(book.title)
                        .font(.headline)
                        .bold()
                    
                    BookDescription(book: book)
                }
                .padding(.vertical, DEFAULT_SPACE)
                
                Spacer()
            }
            
            VStack {
                CustomButton("ADD TO WISHLIST")
                    .padding(.bottom, 10)
                CustomButton("RENT", solid: true, action: {
                    if(!book.available) {
                        showingAlert = true
                    }
                })
                .alert("The book is not available", isPresented: $showingAlert) {
                    Button("Ok", action: {})
                }
            }
            .padding(.bottom, 20)
            .padding(.horizontal, DEFAULT_SPACE*1.5)
        }
        .background(.white)
        .cornerRadius(10)
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(book: books[0])
    }
}

struct BookDescription: View {
    var book: Book
    var body: some View {
        VStack(alignment: .leading) {
            book.available ?
            Text("Available")
                .bold()
                .foregroundColor(.green)
            : Text("Unavailable")
                .bold()
                .foregroundColor(.red)
            Text(book.author)
            Text(book.year)
            Text(book.genre)
        }
        .font(.subheadline)
    }
}
