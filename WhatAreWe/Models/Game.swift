//
//  Game.swift
//  WhatAreWe
//
//  Created by Van Truong on 10/18/23.
//

import Foundation

struct Game {
    private let questions: [Question] = Question.questionBank
    private(set) var guesses = [Question: Int]()
    private(set) var currentQuestionIndex = 0
    private(set) var isOver = false

    /// Count the number of correct & incorrect guesses by going through the questions and guesses array
    var guessCount: (correct: Int, incorrect: Int) {
        // Initialize the correct and incorrect count to be 0
        var count: (correct: Int, incorrect: Int) = (0,0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndx == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    
    /// Return the number of questions
    var numberOfQuestions: Int {
        questions.count
    }
    
    
    /// Return the current question
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    /// Store the index of guess player made in the guesses array
    /// - Parameter index: the index of the answer player guessed
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    /// Increase the question index to move onto next question or flag that game is over
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            print("Now onto question \(currentQuestionIndex + 1)")
        } else {
            isOver = true
        }
    }
}
