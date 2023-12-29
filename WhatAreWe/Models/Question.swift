//
//  Question.swift
//  WhatAreWe
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
        Question(
            questionText: "What was my first programming language?",
            answerChoices: ["C++", "Typescript", "Javascript", "Swift"],
            correctAnswerIndx: 0
        ),
        Question(
            questionText: "I am a _____ person.",
            answerChoices: ["Sunrise", "Sunset"],
            correctAnswerIndx: 0
        ),
        Question(
            questionText: "What is my favorite color?",
            answerChoices: ["Sunrise Orange", "Sunset Orange", "Orange Orange", "Not Orange"],
            correctAnswerIndx: 1
        ),
        Question(
            questionText: "What is my favorite sector of programming?",
            answerChoices: ["Web Dev", "Game Dev", "Android Dev", "iOS Dev"],
            correctAnswerIndx: 3
        ),
        Question(
            questionText: "What is my hobby?",
            answerChoices: ["Knitting", "Brick building", "Gaming", "Cleaning"],
            correctAnswerIndx: 1
        ),
        Question(
            questionText: "When is my birthday?",
            answerChoices: ["June 16th", "January 30th", "April 14th", "December 23rd"],
            correctAnswerIndx: 2
        ),
        Question(
            questionText: "Favorite dessert?",
            answerChoices: ["Pumpkin Pie", "Ice Cream", "Cake", "Brownies"],
            correctAnswerIndx: 3
        ),
        Question(
            questionText: "What is my favorite cat breed?",
            answerChoices: ["Russian Blue", "Siberian", "Maine Coon", "Ragdoll"],
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
            questionText: "What is my favorite sport?",
            answerChoices: ["Badminton", "Soccer", "Tennis", "Baseball"],
            correctAnswerIndx: 1
        ),
        Question(questionText: "My favorite Super Sentai (Power Rangers) series is _____",
                 answerChoices: ["SPD", "Dino Thunder", "Wild Force", "Ninja Storm"],
                 correctAnswerIndx: 2
        )
    ]
}
