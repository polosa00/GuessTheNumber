//
//  ButtonsView.swift
//  GuessTheNumber
//
//  Created by Александр Полочанин on 20.06.23.
//

import SwiftUI

struct ButtonsView: View {
    
    @ObservedObject var gameManager: GameManager
    @Binding var showAlert: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Проверь меня!") {
                showAlert = true
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Your score"),
                    message: Text(gameManager.computeScore().formatted())
                )
            }
            Button("Начать заново") {
                gameManager.restartGame()
            }
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView(gameManager: GameManager(), showAlert: .constant(true))
    }
}
