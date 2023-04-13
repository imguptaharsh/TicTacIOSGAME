//
//  ContentView.swift
//  TicTacIOSGame
//
//  Created by Harsh Gupta on 13/04/23.
//

import SwiftUI

struct ContentView: View
{
//    @StateObject var gameState = GameState()
    
    var body: some View
    {
        let borderSize = CGFloat(5)
        
        VStack(spacing: borderSize)
        {
            ForEach(0...2, id: \.self)
            {
                row in
                HStack(spacing: borderSize)
                {
                    ForEach(0...2, id: \.self)
                    {
                        column in
                        
//                        let cell = gameState.board[row][column]
                        
                        Text("X")
                            .font(.system(size: 60))
//                            .foregroundColor(cell.tileColor())
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white)
                           
                    }
                }
                
            }
        }
        .background(Color.black)
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
