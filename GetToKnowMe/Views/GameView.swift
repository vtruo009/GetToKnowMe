//
//  ContentView.swift
//  GetToKnowMe
//
//  Created by Van Truong on 10/15/23.
//

import SwiftUI

struct GameView: View {
    let gameColor = GameColor()
    
    let question: Question = Question(
        questionText: "What is my favorite color?",
        answerChoices: ["Sunset Orange", "Regular Orange", "Neon Orange", "Tangerine"],
        correctAnswerIndx: 0
    )
    
    var body: some View {
        ZStack {
            gameColor.mainColor
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
                        ChoiceText(choiceText: question.answerChoices[indx])
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
