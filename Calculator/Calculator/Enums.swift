//
//  Enums.swift
//  Calculator
//
//  Created by Angeline Flora John on 12/2/23.
//

import Foundation

enum Operation: String {
    case addition = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
    case null = ""
}

enum CalculatorState: String {
    case inputMode = "inputMode"
    case continueInputMode = "continueInputMode"
}
