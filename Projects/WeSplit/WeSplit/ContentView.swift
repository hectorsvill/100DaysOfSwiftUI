//
//  ContentView.swift
//  WeSplit
//
//  Created by Hector Villasano on 9/20/20.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }.listItemTint(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
