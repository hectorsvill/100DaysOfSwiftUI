//
//  ContentView.swift
//  Moonshot
//
//  Created by Hector Villasano on 10/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(0..<116) { row in
                    NavigationLink(destination: Text("\(row).Detail View")) {
                        Text("\(row).Hello World")
                    }
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
