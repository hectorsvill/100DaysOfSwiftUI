//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Hector Villasano on 9/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action:{
            print("Tapped on Lungs")
        }){
            HStack(spacing: 10){
                Image(systemName: "lungs")
                Text("Lungs")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
