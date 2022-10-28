//
//  Book.swift
//  WBooks
//
//  Created by Cristian Romero on 25/10/22.
//

import Foundation
import SwiftUI

struct Book: Hashable, Codable, Identifiable {
    var id: Int
    var author: String
    var title: String
    var genre: String
    var publisher: String
    var year: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
