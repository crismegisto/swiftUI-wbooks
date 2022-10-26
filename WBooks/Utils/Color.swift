//
//  Color.swift
//  WBooks
//
//  Created by Cristian Romero on 26/10/22.
//

import Foundation
import SwiftUI

extension Color {
    static let backgroundBlue = hexStringToUIColor("#121F3D")
    static let blueGray = hexStringToUIColor("#24385B")
    static let cyan = hexStringToUIColor("#49FFC8")
    static let darkCyan = hexStringToUIColor("#3FCAA0")
}

extension Color {
    static func hexStringToUIColor(_ hex: String, opacity: Double = 1.0) -> Color {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }
        
        if (cString.count) != 6 {
            return Color.gray
        }
        
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return Color(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            opacity: opacity
        )
    }
}
