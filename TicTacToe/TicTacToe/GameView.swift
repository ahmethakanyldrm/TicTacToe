//
//  GameView.swift
//  TicTacToe
//
//  Created by AHMET HAKAN YILDIRIM on 15.12.2024.
//

import SwiftUI

struct GameView: View {
    
    var mode: GameMode
    
    @ViewBuilder
    private func closeButton() -> some View {
        HStack {
            Spacer()
            Button {
                
            } label: {
                Text(AppStrings.exit)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.red)
                    
            }
            .frame(width: 80, height: 40)
            .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
            )
        }
        .background(Color.green)
        .padding(.bottom,20)
        
    }
    
    @ViewBuilder
    private func main() -> some View {
        VStack {
            closeButton()
            Spacer()
        }
        .padding(.horizontal, 16)
        .background(Color.yellow)

    }
    
    var body: some View {
        main()
    }
}

#Preview {
    GameView(mode: .online)
}
