//
//  ContentView.swift
//  iExpense
//
//  Created by Hector Villasano on 10/6/20.
//

import SwiftUI


// Showing and hiding Views

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String
    
    var body: some View {
        VStack {
            Text("Hi \(name)")
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@hectorsvill")
        }
    }
}

// Sharing SwiftUI state with @ObservedObject
class User: ObservableObject {
    @Published var firstName = "Hector"
    @Published var lastName = "Villa"
}

struct ContentView2: View {
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
