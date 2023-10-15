//
//  ContentView.swift
//  GetToKnowMe
//
//  Created by Van Truong on 10/15/23.
//

import SwiftUI

struct GameView: View {
    let gameColor = GameColor()
    
    var body: some View {
        ZStack {
            gameColor.mainColor
                .ignoresSafeArea()
                .opacity(0.65)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
