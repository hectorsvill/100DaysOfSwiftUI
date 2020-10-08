//
//  ContentView.swift
//  iExpense
//
//  Created by Hector Villasano on 10/6/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var expenses = Expenses()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("iExpense")
            .navigationBarItems(trailing: Button(action: {
                let expense = ExpenseItem(name: "Test", type: "Person", amount: 5)
                expenses.items.append(expense)
            }){
                Image(systemName: "plus")
            })
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
