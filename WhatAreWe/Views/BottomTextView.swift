//
//  NextButtonText.swift
//  WhatAreWe
//
//  Created by Van Truong on 11/12/23.
//

import SwiftUI

struct BottomTextView: View {
    
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .foregroundColor(GameColor.mainColor)
                .font(.system(size: 30))
                .bold()
                .padding()
            Spacer()
        }
        .background(GameColor.accentColor)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Back")
    }
}
