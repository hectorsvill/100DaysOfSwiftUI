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
            print(self)
        }.padding(50)
        .background(Color.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
