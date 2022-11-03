//
//  ContentBookDetail.swift
//  WBooks
//
//  Created by Cristian Romero on 28/10/22.
//

import SwiftUI

struct ContentBookDetail: View {
    var book: Book
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color.wLightBlue.ignoresSafeArea()
            
            VStack {
                BookDetail(book: book)
                    .padding()
                    .navigationBarTitle("BOOK DETAIL")
                
                Spacer()
            }
        }
    }
}

struct ContentBookDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentBookDetail(book: books[0])
    }
}
