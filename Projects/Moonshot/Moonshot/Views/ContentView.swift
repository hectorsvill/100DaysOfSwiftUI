//
//  ContentView.swift
//  Moonshot
//
//  Created by Hector Villasano on 10/12/20.
//

import SwiftUI


struct ContentView: View {
    let astronuts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text("\(astronuts.count)")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
