//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hector Villasano on 9/23/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useGreenText = false
    
    var body: some View {
        
        VStack {
            Text("Hector")
            Text("Steven")
                .font(.body)
            Text("Villasano")
        }.font(.largeTitle)
        
//        .blur(radius: 1)
        
        
//        Button("Hello World") {
//            print("button: \(type(of: self.body))")
//            self.useGreenText.toggle()
//        }
//        .foregroundColor(useGreenText ? Color.green : Color.blue)
        
//        Text("This is Hector")
//            .padding()
//            .background(Color.red)
//            .padding()
//            .background(Color.green)
//            .padding()
//            .background(Color.blue)
//            .padding()
//            .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
