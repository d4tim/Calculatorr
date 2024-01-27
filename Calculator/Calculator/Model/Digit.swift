//
//  Digit.swift
//  Calculator
//
//  Created by Дмитрий Тимаров on 24.01.2024.
//

import Foundation

enum Digit: Int, CaseIterable , CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
    
}
