//
//  CustomSliderView.swift
//  GuessTheNumber
//
//  Created by Александр Полочанин on 20.06.23.
//

import SwiftUI

struct CustomSliderView: View {
    
    @ObservedObject var gameManager: GameManager
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(gameManager.targetValue) ")
            HStack {
                Text("0")
                UISliderRepresentation(
                    value: $gameManager.currentValue,
                    alpha: gameManager.computeAlpha()
                )
                Text("100")
            }
            .padding()
        }
    }
}

struct CastomSliderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSliderView(gameManager: GameManager())
    }
}
