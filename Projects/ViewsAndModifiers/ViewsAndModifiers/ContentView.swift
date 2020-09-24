//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hector Villasano on 9/23/20.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .clipShape(Capsule())
    }
}


struct ContentView: View {
    
//    @State private var useGreenText = false
    
    var firstName: some View {
        Text("Hector")
    }
    
    var body: some View {
        VStack {
            firstName
                .foregroundColor(.green)
            CapsuleText(text: "Steven")
                .foregroundColor(.white)
            CapsuleText(text: "Villasano")
        }.font(.largeTitle)    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
