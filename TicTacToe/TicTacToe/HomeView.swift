//
//  HomeView.swift
//  TicTacToe
//
//  Created by AHMET HAKAN YILDIRIM on 15.12.2024.
//

import SwiftUI

struct HomeView: View {
    
    @ViewBuilder
    private func titleView() -> some View {
        VStack(spacing: 20) {
            Image("ticTacToe")
                .renderingMode(.original)
                .resizable()
                .frame(width: 180, height: 180)
            
            Text("Tic Tac Love")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.mint)
        }
        .padding(.top, 50)
    }
    
    @ViewBuilder
    private func buttonView() -> some View {
        VStack(spacing: 15) {
            ForEach(GameMode.allCases, id: \.self) {mode in
                Button {
                    
                } label: {
                    Text(mode.name)
                        
                }
                .buttonStyle(.appButton(color: mode.color))
            }
        }
        .padding(.horizontal,16)
        .padding(.bottom,50)
        
    }
    
    
    @ViewBuilder
    private func main() -> some View {
        VStack {
            titleView()
            Spacer()
            buttonView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(red: 0.91, green: 0.89, blue: 0.90))
    }
    
    var body: some View {
        main()
    }
}

#Preview {
    HomeView()
}
