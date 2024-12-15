//
//  GameView.swift
//  TicTacToe
//
//  Created by AHMET HAKAN YILDIRIM on 15.12.2024.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    
    var mode: GameMode
    
    @ViewBuilder
    private func closeButton() -> some View {
        HStack {
            Spacer()
            Button {
                dismiss()
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
    private func scoreView() -> some View {
        HStack {
            Text("Player 1: 0")
            Spacer()
            Text("Player 2: 0")
        }
        .background(Color.gray)
        .foregroundStyle(.white)
        .font(.title2)
        .fontWeight(.semibold)
    }
    
    @ViewBuilder
    private func gameStatus() -> some View {
        VStack {
            Text("Player 1's move")
                .font(.title2)

        }
        .foregroundStyle(.white)
        .background(Color.pink)
    }
    
    @ViewBuilder
    private func main() -> some View {
        VStack {
            closeButton()
            scoreView()
            Spacer()
            gameStatus()
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
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
