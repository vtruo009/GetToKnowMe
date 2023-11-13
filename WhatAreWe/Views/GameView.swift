//
//  ContentView.swift
//  WhatAreWe
//
//  Created by Van Truong on 10/15/23.
//

import SwiftUI

struct GameView: View {
    @State var game = Game()
    @StateObject var viewModel = GameViewModel()
        
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Text("\(viewModel.questionProgressText)")
                    .font(.callout)
                    .padding()
                    .multilineTextAlignment(.leading)
                QuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(GameColor.accentColor)
            .navigationBarBackButtonHidden()
            .environmentObject(viewModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(GameViewModel())
    }
}
