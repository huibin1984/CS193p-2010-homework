//
//  Array+Only.swift
//  memorize
//
//  Created by wuhuibin on 2020/6/8.
//  Copyright © 2020 paradox. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
