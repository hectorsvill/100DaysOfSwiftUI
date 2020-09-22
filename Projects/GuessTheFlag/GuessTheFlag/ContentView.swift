//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Hector Villasano on 9/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            VStack {
                Text("1")
                Text("2")
            }
            
            HStack(spacing: 10) {
                Text("3")
                Text("4")
            }
            
            ZStack {
                Text("555")
                Text("6")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
