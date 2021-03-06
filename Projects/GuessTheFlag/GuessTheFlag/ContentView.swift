//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Hector Villasano on 9/21/20.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreMessage = ""
    @State private var score = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white).font(.caption).fontWeight(.medium)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white).font(.largeTitle).fontWeight(.heavy)
                }
                
                ForEach(0..<3) { number in
                    Button(action: {
                        self.flagTapped(number)
                            
                    }){
                        Image(self.countries[number])
                            .renderingMode(.original).clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .stroke(Color.black, lineWidth: 1)
                            )
                            .shadow(color: .black, radius:2)
                    }
                }
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            
                Spacer()
            }
        }.alert(isPresented: $showingScore) {
            Alert(
                title: Text(scoreTitle),
                message: Text("\(scoreMessage)"),
                dismissButton: .default(Text("Continue")
                ) {
                    self.askQuestion()
                }
            )
        }
        
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            self.score += 1
            scoreTitle = "Correct"
            scoreMessage = "Your score is \(score)"
        } else {
            scoreTitle = "Wrong"
            scoreMessage = "Solution is flag number \(correctAnswer + 1)"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
