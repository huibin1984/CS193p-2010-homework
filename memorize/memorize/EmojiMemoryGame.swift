//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by wuhuibin on 2020/5/21.
//  Copyright © 2020 paradox. All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    @Published private(set) var game: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "🙈", "🧚‍♀️"]
        let count = Int.random(in: 2...5)
        return MemoryGame(numberOfPairsOfCards: count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // MARK: - access to the model
    var cards: [MemoryGame<String>.Card] {
        game.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        game.chooseCard(card)
    }
}
