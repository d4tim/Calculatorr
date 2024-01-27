//
//  ArithmeticOperation.swift
//  Calculator
//
//  Created by Дмитрий Тимаров on 24.01.2024.
//

import Foundation


enum ArithmeticOperation: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self {
        case . addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "*"
        case .division:
            return "÷"
        }
    }
}
