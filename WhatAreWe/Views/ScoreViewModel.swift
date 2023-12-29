//
//  ScoreViewModel.swift
//  WhatAreWe
//
//  Created by Van Truong on 12/28/23.
//

import SwiftUI

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
