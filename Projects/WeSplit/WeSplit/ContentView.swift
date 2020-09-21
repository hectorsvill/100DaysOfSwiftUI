//
//  ContentView.swift
//  WeSplit
//
//  Created by Hector Villasano on 9/20/20.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter Your name", text: $name)
            Text("Your Name is \(name)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
