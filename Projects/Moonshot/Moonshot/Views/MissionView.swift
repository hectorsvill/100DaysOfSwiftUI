//
//  MissionView.swift
//  Moonshot
//
//  Created by Hector Villasano on 10/13/20.
//

import SwiftUI

struct MissionView: View {
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }
    
    let astronauts: [CrewMember]
    let mission: Mission
    
    
    init(mission: Mission, astronauts: [Astronaut]) {
        self.mission = mission
        var matches = [CrewMember]()
        
        for member in mission.crew {
            if let match = astronauts.first(where: {$0.id == member.name }) {
                matches.append(CrewMember(role: member.name, astronaut: match))
            } else {
              fatalError("Missing \(member)")
            }
        }
        
        self.astronauts = matches
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: geometry.size.width * 0.7)
                        .padding(.top)
                    
                    Text(self.mission.description)
                        .padding()
                    
                    ForEach(self.astronauts, id: \.role) { crewMember in
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 83, height: 60)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .stroke(Color.primary, lineWidth: 1)
                                )
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .font(.headline)
                                Text(crewMember.role)
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 25)
                    
                }
            }
        }
        
        .navigationBarTitle(Text(mission.displayName), displayMode: .inline)
    }
}

struct MissionView_Previews: PreviewProvider {
    static var previews: some View {
        let missions: [Mission] = Bundle.main.decode(.missions)
        let astronauts: [Astronaut] = Bundle.main.decode(.astronauts)
        MissionView(mission: missions[0], astronauts: astronauts)
    }
}
