//
//  BookDetail.swift
//  WBooks
//
//  Created by Cristian Romero on 28/10/22.
//

import SwiftUI

struct BookDetail: View {
    var book: Book
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            BookInformation
            
            Buttons
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

private extension BookDetail {
    var BookInformation : some View {
        HStack(alignment: .top, spacing: GlobalConstants.Spaces.DEFAULT_SPACE) {
            book.image
                .resizable()
                .frame(width: 70, height: 100)
                .padding(.vertical, GlobalConstants.Spaces.DEFAULT_SPACE)
                .padding(.leading, GlobalConstants.Spaces.DEFAULT_SPACE*1.5)
            
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                    .bold()
                
                BookDescription
            }
            .padding(.vertical, GlobalConstants.Spaces.DEFAULT_SPACE)
            
            Spacer()
        }
    }
}

private extension BookDetail {
    var BookDescription : some View {
        VStack(alignment: .leading) {
            book.available ?
            Text("Available")
                .modifier(BasicTextModifier(color: .green))
            : Text("Unavailable")
                .modifier(BasicTextModifier(color: .red))
            Text(book.author)
            Text(book.year)
            Text(book.genre)
        }
        .font(.subheadline)
    }
}


private extension BookDetail {
    var Buttons : some View {
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
        .padding(.horizontal, GlobalConstants.Spaces.DEFAULT_SPACE*1.5)
    }
}
