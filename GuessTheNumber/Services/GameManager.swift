//
//  GameManager.swift
//  GuessTheNumber
//
//  Created by Александр Полочанин on 20.06.23.
//

import SwiftUI

final class GameManager: ObservableObject {
    
    @Published var currentValue = 50.0
    @Published var targetValue = Int.random(in: 1...100)
    
    private var difference: Double {
        abs(Double(targetValue) - currentValue)
    }
    
    func computeAlpha() -> CGFloat {
        100.0 - difference
    }
    
    func computeScore() -> Int {
         100 - lround(difference)
    }
    
    func restartGame() {
        targetValue = Int.random(in: 1...100)
    }
}
