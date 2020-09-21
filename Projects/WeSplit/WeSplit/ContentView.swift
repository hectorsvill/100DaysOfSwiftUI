//
//  ContentView.swift
//  WeSplit
//
//  Created by Hector Villasano on 9/20/20.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 1
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people:", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header: Text("How much tip to leave:")) {
                    Picker("Tip Percentage: ", selection: $tipPercentage) {
                        ForEach(0..<self.tipPercentages.count) { _ in
                            Text("\(tipPercentages[tipPercentage])%")
                        }
                        
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    
                }
                
                
                Section {
                    Text("$\(checkAmount)")
                }
            }
            
            .navigationTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
