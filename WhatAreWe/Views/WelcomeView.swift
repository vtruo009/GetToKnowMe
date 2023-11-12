//
//  WelcomeView.swift
//  WhatAreWe
//
//  Created by Van Truong on 11/11/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.mainColor
                    .ignoresSafeArea()
                    .opacity(0.65)
                VStack(alignment: .center, spacing: 0 ) {
                    Text("What are we? 🤨")
                        .font(.system(size: 65))
                        .bold()
                        .padding()
                        .multilineTextAlignment(.leading)
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            Text("You tell me →")
                                .padding()
                                .font(.system(size: 50))
                                .bold()
                                .foregroundColor(GameColor.accentColor)
                                .border(GameColor.accentColor, width: 5)
                                .cornerRadius(10)
                        }
                    )
                }
            }
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
