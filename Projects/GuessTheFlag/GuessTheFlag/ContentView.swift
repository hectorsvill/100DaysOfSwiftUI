//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Hector Villasano on 9/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            let gradient = Gradient(colors: [.blue, .black])
            let gradient = Gradient(colors: [.red, .green, .blue, .yellow, .orange, .pink])
//            LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top)
//            RadialGradient(gradient: gradient, center: .center, startRadius: 10, endRadius: 100)
            AngularGradient(gradient: gradient, center: .center)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
