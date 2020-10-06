//
//  ContentView.swift
//  iExpense
//
//  Created by Hector Villasano on 10/6/20.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Hector"
    @Published var lastName = "Villa"
}

struct ContentView: View {
    @ObservedObject private var user = User()
    
    var body: some View {
        VStack {
            Text("name: \(user.firstName) \(user.lastName)")
            TextField("firsr name: ", text: $user.firstName)
            TextField("last name: ", text: $user.lastName)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
