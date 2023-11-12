//
//  ContentView.swift
//  GetToKnowMe
//
//  Created by Van Truong on 10/15/23.
//

import SwiftUI

struct GameView: View {
    let gameColor = GameColor()
    @State var game = Game()
    @State var mainColor = GameColor().mainColor
    
    let question: Question = Question(
        questionText: "What is my favorite color?",
        answerChoices: ["Sunset Orange", "Sunrise Orange", "Orange Orange", "Not Orange"],
        correctAnswerIndx: 0
    )
    
    var body: some View {
        ZStack {
            mainColor
                .ignoresSafeArea()
                .opacity(0.65)
            VStack {
                Text("1/5")
                    .font(.callout)
                    .padding()
                    .multilineTextAlignment(.leading)
                Text(question.questionText)
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .bold()
                Spacer()
                HStack {
                    ForEach(0..<question.answerChoices.count) { indx in
                        Button(action: {
                            print("You tapped on choice \(indx+1)")
                            mainColor = indx == question.correctAnswerIndx ? gameColor.correctAnswer : gameColor.wrongAnswer
                            game.makeGuessForCurrentQuestion(atIndex: indx)
                            game.updateGameStatus()
                            
                        }, label: {
                            ChoiceTextView(choiceText: question.answerChoices[indx])
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
    }
}
