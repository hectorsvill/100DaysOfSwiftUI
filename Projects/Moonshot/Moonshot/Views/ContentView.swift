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
        NavigationView {
            List(mission) { mission in
                NavigationLink(destination: MissionView(mission: mission)) {
                    Image(mission.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        
                        Text(mission.formattedLaunchDate)
                    }
                    
                }
            }
            .navigationBarTitle("Moonshot")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
