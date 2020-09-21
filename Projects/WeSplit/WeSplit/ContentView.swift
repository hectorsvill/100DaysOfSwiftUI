//
//  ContentView.swift
//  WeSplit
//
//  Created by Hector Villasano on 9/20/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, world!")
                }
                
                Section {
                    Text("Hello, world!")
                }
            }
            .navigationTitle(Text("WeSplit"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
