//
//  ContentView.swift
//  Word_Scramble
//
//  Created by Hector Villasano on 10/1/20.
//

import SwiftUI

struct ContentView: View {
    let people = ["hsv", "pkl", "nmp", "asx"]
    
    var body: some View {
        List {
            Section(header: Text("Start Section")) {
                Text("Start").font(.headline)
            }

            Section(header: Text("Middle Section")) {
//                ForEach(1..<4) {
//                    Text("List \($0)")
//                }
                
                ForEach(people, id: \.self) {
                    Text($0)
                }
            }

            Section(header: Text("End Section")) {
                Text("End").font(.headline)
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
