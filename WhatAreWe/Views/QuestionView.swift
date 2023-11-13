//
//  QuestionView.swift
//  WhatAreWe
//
//  Created by Van Truong on 11/12/23.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
    @EnvironmentObject var viewModel: GameViewModel
    
    var body: some View {
        
        Text(question.questionText)
            .font(.largeTitle)
            .multilineTextAlignment(.leading)
            .bold()
        Spacer()
        HStack {
            ForEach(0..<question.answerChoices.count) { indx in
                Button(action: {
                    print("You tapped on choice \(indx+1)")
                    viewModel.makeGuess(atIndex: indx)
                }, label: {
                    ChoiceTextView(choiceText: question.answerChoices[indx])
                        .background(
                            viewModel.color(forOptionIndex: indx)
                        )
                }).disabled(viewModel.guessWasMade)
            }
        }
        if viewModel.guessWasMade {
            Button(
                action: {
                    viewModel.displayNextScreen()
                },
                label: {
                    NextButtonText(str: "Next")
                }
            ).padding()
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
