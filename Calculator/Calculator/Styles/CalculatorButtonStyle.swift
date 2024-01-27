//
//  CalculatorButtonStyle.swift
//  Calculator
//
//  Created by Дмитрий Тимаров on 24.01.2024.
//

import Foundation
import SwiftUI

struct CalculatorButtonStyle: ButtonStyle {
    
    var isWide: Bool = false
    var size: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 32, weight: .medium))
            .frame(width: size, height: size)
            .frame(maxWidth: isWide ?  .infinity : size, alignment: .leading )
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .overlay {
                if configuration.isPressed {
                    Color(white: 1.0, opacity: 0.2)
                }
            }
            .clipShape(Capsule())
        
    }
}

struct CalculatorButtonStyle_Previews: PreviewProvider {
    static let buttonType: ButtonType = .digit(.zero)
    
    static var previews: some View {
        Button(buttonType.description) { }
            .buttonStyle(CalculatorButtonStyle(
                isWide: buttonType == .digit(.zero),
                size: 80,
                backgroundColor: buttonType.backgroundColor,
                foregroundColor: buttonType.foreGroundColor)
            )
    }
}


