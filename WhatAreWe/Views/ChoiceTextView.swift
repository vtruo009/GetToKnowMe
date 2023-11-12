//
//  ChoiceText.swift
//  WhatAreWe
//
//  Created by Van Truong on 10/18/23.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    let gameColor = GameColor()
    
    var body: some View {
        Text(choiceText)
            .padding(10)
            .font(.body)
            .bold()
            .border(GameColor.accentColor, width: 2)
            .foregroundColor(GameColor.accentColor)
            .multilineTextAlignment(.center)
    }
}

struct ChoiceText_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "blue")
    }
}
