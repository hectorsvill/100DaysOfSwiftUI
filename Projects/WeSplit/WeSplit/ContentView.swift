//
//  ContentView.swift
//  WeSplit
//
//  Created by Hector Villasano on 9/20/20.
//

import SwiftUI

struct ContentView: View {
    let students = ["Hector", "Steven", "Joe"]
    @State private var selectedStudent = 0
    
    var body: some View {
        VStack {
            Text("Select a Student")
            Picker("Select:", selection: $selectedStudent) {
                ForEach(0..<students.count ) {
                    Text(self.students[$0])
                }
            }
            
            Text("\(students[selectedStudent]) is student # \(selectedStudent)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
