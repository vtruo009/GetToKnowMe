//
//  GameViewModel.swift
//  WhatAreWe
//
//  Created by Van Truong on 11/9/23.
//

import SwiftUI

// 1
class GameViewModel: ObservableObject {

    // MARK: - Published properties
    // 2
    @Published private var game = Game()

    // MARK: - Internal properties
    // 3
    var currentQuestion: Question {
        game.currentQuestion
    }
    // 4
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }

    var gameIsOver: Bool {
        game.isOver
    }
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.mainColor
            } else if guessedIndex == currentQuestion.correctAnswerIndx {
                return GameColor.correctAnswer
            } else {
                return GameColor.wrongAnswer
            }
        } else {
            return GameColor.mainColor
        }
    }
}
