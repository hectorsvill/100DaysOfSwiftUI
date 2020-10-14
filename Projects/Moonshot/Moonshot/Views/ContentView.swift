//
//  ContentView.swift
//  Moonshot
//
//  Created by Hector Villasano on 10/12/20.
//

import SwiftUI

struct ContentView: View {
    let astronuts: [Astronaut] = Bundle.main.decode(.astronauts)
    let mission: [Mission] = Bundle.main.decode(.missions)
    
    var body: some View {
        Text("\(astronuts.count), \(mission.count)")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
