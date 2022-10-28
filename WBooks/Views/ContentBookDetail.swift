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
    @State private var showingAlert = false
    
    
    var btnBack : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image("ic_back")
        }
    }
    
    var body: some View {
        ZStack {
            Color.wLightBlue.ignoresSafeArea()
            
            VStack {
                BookDetail(book: book, action: { showingAlert = true })
                    .padding()
                
                Spacer()
            }
            .alert("Important message", isPresented: $showingAlert) {
                Button("qwerty", action: {print("sdas")})
            }
        }
    }
}

struct ContentBookDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentBookDetail(book: books[0])
    }
}
