//
//  MemoryGame.swift
//  memorize
//
//  Created by wuhuibin on 2020/5/21.
//  Copyright © 2020 paradox. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
        cards.shuffle()
    }
    
    mutating func chooseCard(_ card: Card) {
        print("card chosen:\(card)")
        let chosenIndex = cards.first(matching: card)
        cards[chosenIndex].isFaceUp = !cards[chosenIndex].isFaceUp
    }
    
    struct Card: Identifiable {
        var isFaceUp = true
        var isMatched = false
        var content: CardContent
        var id: Int
    }
}
