//
//  AppButtonStyle.swift
//  TicTacToe
//
//  Created by AHMET HAKAN YILDIRIM on 15.12.2024.
//

import SwiftUI

struct AppButtonStyle: ButtonStyle {
   
    let color: Color
    
    init(color: Color) {
        self.color = color
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: 70)
            .frame(maxWidth: .infinity)
            .font(.title2)
            .fontWeight(.semibold)
            .background(color)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .shadow(radius: 8)
    }
    
}


extension ButtonStyle where Self == AppButtonStyle {
    static func appButton(color: Color) -> AppButtonStyle {
        AppButtonStyle(color: color)
    }
}
