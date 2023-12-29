# What Are We? 🤨

A fun way for people to get to know me a bit better!

## Description

The objective was to build a simple quiz game referencing Codecademy's CodeHistory app to get some hands-on experience with SwiftUI and iOS Development.

As the player is going through the 10 question quiz, the numer of correct and incorrect guesses are counted and will be displayed at the end as the score.

![WhatAreWe Demo](https://github.com/vtruo009/what-are-we/assets/43657607/4ecac993-4d7e-4120-82ed-8d4e0dde1206)

## Architecture

`What Are We? 🤨` is implemented using the Model-View-ViewModel (MVVM) design pattern.
  * **Views** - responsible for formatting the buttons, displaying the question text, and the welcome screen
  * **Models** - house the game data, such as the question bank, the color scheme of the app, and the information needed to display to player
  * **View Models** - works as the brain of the game, where it knows what to re-render and display new information to the player based on the guess

## Topics
* Views
* Models
* View Models
* Structures and Classes
* Properties and Access Control
* Navigation

## Technologies
* Swift 5
* SwiftUI 
* Xcode 14
