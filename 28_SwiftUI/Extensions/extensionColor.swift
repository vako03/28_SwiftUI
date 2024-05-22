//
//  extensionColor.swift
//  28_SwiftUI
//
//  Created by valeri mekhashishvili on 22.05.24.
//


import SwiftUI

extension Color {
    init(backgroundColor: String) {
        let scanner = Scanner(string: backgroundColor)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}
