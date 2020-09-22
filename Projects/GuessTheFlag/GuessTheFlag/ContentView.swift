//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Hector Villasano on 9/21/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert"){
            self.showingAlert.toggle()
        }.alert(isPresented: $showingAlert, content: {
            Alert(title: Text("title"), message: Text("Alert Message"), dismissButton: .default(Text("OK")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
