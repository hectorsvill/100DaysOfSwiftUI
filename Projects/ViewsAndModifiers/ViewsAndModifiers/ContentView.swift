//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Hector Villasano on 9/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, world!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
