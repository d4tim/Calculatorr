//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Дмитрий Тимаров on 24.01.2024.
//

import SwiftUI

@main
struct CalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
