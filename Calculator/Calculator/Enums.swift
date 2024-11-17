//
//  Enums.swift
//  Calculator
//
//  Created by ajohn on 12/2/23.
//

import Foundation

enum Operation: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
    case null = ""
}

enum CalculatorState: String {
    case inputMode = "inputMode" // to add one number after another in the display
    case newInputMode = "newInputMode" // to add a new number altogether
}
