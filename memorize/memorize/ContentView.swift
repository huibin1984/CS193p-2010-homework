//
//  EmojiMemoryGameView.swift
//  memorize
//
//  Created by wuhuibin on 2020/5/20.
//  Copyright © 2020 paradox. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    var game: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(game.cards) { card in
                CardView(card: card).onTapGesture {
                    self.game.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(game.cards.count == 5 ? .body : .largeTitle)
    }
}

struct CardView: View {
    
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }.aspectRatio(CGSize(width: 2, height: 3), contentMode: .fit)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(game: EmojiMemoryGame())
    }
}
