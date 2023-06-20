//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Александр Полочанин on 19.06.23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var gameManager = GameManager()
    @State var showAlert = false
    
    var body: some View {
        VStack {
            CustomSliderView(gameManager: gameManager)
            ButtonsView(gameManager: gameManager,showAlert: $showAlert)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




