//
//  ContentView.swift
//  Animations
//
//  Created by Hector Villasano on 10/4/20.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap This") {
            self.animationAmount += 1 
        }.padding(50)
        .background(Color.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
            
        )
        .onAppear {
            self.animationAmount = 2
        }
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(
//            Animation.easeOut(duration: 2)
//                .repeatForever(autoreverses: true)
//                .repeatCount(2, autoreverses: true)
//                .delay(0.5)
//        ) //.interpolatingSpring(stiffness: 50, damping: 1))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
