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
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                       incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() }
                          )
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            GameView()
                .environmentObject(GameViewModel())
        }
    }
}
