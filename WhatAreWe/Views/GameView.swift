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
        let currentQuestion = viewModel.currentQuestion
        ZStack {
            GameColor.mainColor.ignoresSafeArea().opacity(0.65)
            VStack {
                Text("\(viewModel.questionProgressText)")
                    .font(.callout)
                    .padding()
                    .multilineTextAlignment(.leading)
                Text(currentQuestion.questionText)
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .bold()
                Spacer()
                HStack {
                    ForEach(0..<currentQuestion.answerChoices.count) { indx in
                        Button(action: {
                            print("You tapped on choice \(indx+1)")
                            viewModel.makeGuess(atIndex: indx)
                            viewModel.color(forOptionIndex: indx)
                            
                        }, label: {
                            ChoiceTextView(choiceText: currentQuestion.answerChoices[indx])
                        })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(GameViewModel())
    }
}
