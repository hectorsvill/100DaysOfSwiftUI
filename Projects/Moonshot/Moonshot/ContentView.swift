//
//  ContentView.swift
//  Moonshot
//
//  Created by Hector Villasano on 10/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            Image("young")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geo.size.width, height: 300)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
