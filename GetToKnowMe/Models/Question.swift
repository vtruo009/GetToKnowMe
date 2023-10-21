//
//  Question.swift
//  GetToKnowMe
//
//  Created by Van Truong on 10/15/23.
//

import Foundation
import SwiftUI

struct Question: Hashable {
    let questionText: String
    let answerChoices: [String]
    let correctAnswerIndx: Int
    
    static let questionBank: [Question] = [
        Question(questionText: "What is my favorite color?", answerChoices: ["Sunset Orange", "Sunrise Orange", "Orange Orange", "Not Orange"], correctAnswerIndx: 0
        ),
        Question(
            questionText: "When is my birthday?",
            answerChoices: ["June 16th", "January 30th", "April 14th", "December 23rd"],
            correctAnswerIndx: 2
        ),
        Question(
            questionText: "Which of the following is a hobby of mine?",
            answerChoices: ["Knitting", "Brick building", "Gaming", "Cleaning"],
            correctAnswerIndx: 1
        ),
        Question(
            questionText: "What is my favorite dessert?",
            answerChoices: ["Pumpkin Pie", "Ice Cream", "Cake", "Brownies"],
            correctAnswerIndx: 3
        ),
        Question(
            questionText: "What is my favorite cat breed?",
            answerChoices: ["Russian Blue", "Munchkin", "Maine Coon", "Ragdoll"],
            correctAnswerIndx: 3
        ),
        Question(
            questionText: "What was my first car?",
            answerChoices: ["Honda Accord", "Toyota Corolla", "Nissan Sentra", "BMW 4 Series"],
            correctAnswerIndx: 0
        ),
        Question(
            questionText: "What was my \"first dream car\"?",
            answerChoices: ["BMW i8", "Range Rover", "Nissan Z", "G Wagon"],
            correctAnswerIndx: 2
        ),
        Question(
            questionText: "Which of the following programming language did I first learn?",
            answerChoices: ["C++", "Typescript", "Javascript", "Swift"],
            correctAnswerIndx: 0
        ),
        Question(
            questionText: "Which of the following programming language did I first learn?",
            answerChoices: ["Typescript", "C++", "Javascript", "Swift"],
            correctAnswerIndx: 1
        ),
        Question(
            questionText: "What is my favorite sector of programming?",
            answerChoices: ["Web Development", "Game Development", "Android Development", "iOS Development"],
            correctAnswerIndx: 3
        ),
    ]
}
