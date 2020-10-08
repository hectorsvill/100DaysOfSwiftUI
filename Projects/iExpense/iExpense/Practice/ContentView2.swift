//
//  ContentView2.swift
//  iExpense
//
//  Created by Hector Villasano on 10/6/20.
//


import SwiftUI


// Storing user settings with UserDefaults

struct ContentView5: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
    
}



// Deleteing items using onDelete()

struct ContentView4: View {
    @State private var number = [Int]()
    @State private var currentNumber = 1
    
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(number, id: \.self) {
                        Text("\($0)")
                    }
                    .onDelete(perform:  removeRows)
                }
                
                Button("Add Number") {
                    number.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationBarItems(leading: EditButton())
        }
    }
    
    func removeRows(at offSet: IndexSet) {
        number.remove(atOffsets: offSet)
    }
    
}




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

struct ContentView3: View {
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
class User2: ObservableObject {
    @Published var firstName = "Hector"
    @Published var lastName = "Villa"
}

struct ContentView2: View {
    @ObservedObject private var user = User2()
    
    var body: some View {
        VStack {
            Text("name: \(user.firstName) \(user.lastName)")
            TextField("firsr name: ", text: $user.firstName)
            TextField("last name: ", text: $user.lastName)
            
        }
    }
}


struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4()
    }
}
