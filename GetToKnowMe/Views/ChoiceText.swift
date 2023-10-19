//
//  ChoiceText.swift
//  GetToKnowMe
//
//  Created by Van Truong on 10/18/23.
//

import SwiftUI

struct ChoiceText: View {
    
    let choiceText: String
    let gameColor = GameColor()
    
    var body: some View {
        Text(choiceText)
            .padding(10)
            .font(.body)
            .bold()
            .border(gameColor.accentColor, width: 2)
            .foregroundColor(gameColor.accentColor)
            .multilineTextAlignment(.center)
    }
}

struct ChoiceText_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceText(choiceText: "blue")
    }
}
