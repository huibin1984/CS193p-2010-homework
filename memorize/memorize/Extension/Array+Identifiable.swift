//
//  Array+Identifiable.swift
//  memorize
//
//  Created by wuhuibin on 2020/6/8.
//  Copyright © 2020 paradox. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func first(matching element: Element) -> Int {
        for index in 0..<self.count {
            if self[index].id == element.id {
                return index
            }
         }
        return 0
    }
}
