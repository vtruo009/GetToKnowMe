//
//  ScoreView.swift
//  WhatAreWe
//
//  Created by Van Truong on 12/28/23.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.system(size: 30))
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 70))
                Spacer()
                Text("Correct: \(viewModel.correctGuesses) ✅")
                    .font(.system(size: 30))
                Text("Incorrect: \(viewModel.incorrectGuesses) ❌")
                    .font(.system(size: 30))
                Spacer()
                NavigationLink(
                        destination: GameView(),
                        label: {
                          BottomTextView(str: "Re-take Quiz")
                        })
                .padding()
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
