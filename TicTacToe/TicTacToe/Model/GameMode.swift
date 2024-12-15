//
//  GameMode.swift
//  TicTacToe
//
//  Created by AHMET HAKAN YILDIRIM on 15.12.2024.
//

import SwiftUI

enum GameMode: CaseIterable, Identifiable {
    
    var id: Self {return self}
    
    case vsHuman, vsCPU, online, newMode
    
    var name: String {
        switch self {
            
        case .vsHuman:
            return AppStrings.vsHuman
        case .vsCPU:
            return AppStrings.vsCpu
        case .online:
            return AppStrings.online
        case .newMode:
            return "New Title"
        }
    }
    
    var color: Color {
        switch self {
            
        case .vsHuman:
            return Color.indigo
        case .vsCPU:
            return Color.red
        case .online:
            return Color.green
        case .newMode:
            return Color.blue
        }
    }
    
}
