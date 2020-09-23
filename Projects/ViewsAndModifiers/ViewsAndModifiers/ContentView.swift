//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hector Villasano on 9/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Button("Hello World") {
//            print("button: \(type(of: self.body))")
//        }
//        .frame(width: 200, height: 200)
//        .background(Color.green)
        
        Text("This is Hector")
            .padding()
            .background(Color.red)
            .padding()
            .background(Color.green)
            .padding()
            .background(Color.blue)
            .padding()
            .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
