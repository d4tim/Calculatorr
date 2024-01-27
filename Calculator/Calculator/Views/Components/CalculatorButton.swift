//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Дмитрий Тимаров on 27.01.2024.
//

import Foundation
import SwiftUI

extension CalculatorView{
    struct CalculatorButton: View {
        
        
        let buttonType: ButtonType
        @EnvironmentObject private var viewModel: ViewModel
        
        var body: some View {
            Button(buttonType.description) { 
                viewModel.performAction(for: buttonType)
            }
                .buttonStyle(CalculatorButtonStyle(
                    isWide: buttonType == .digit(.zero),
                    size: getButtonSize(),
                    backgroundColor: buttonType.backgroundColor,
                    foregroundColor: buttonType.foreGroundColor))
        }
        
        private func getButtonSize() -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4.0
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
        }
    }
    
    
}


