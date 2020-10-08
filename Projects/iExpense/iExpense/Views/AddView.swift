//
//  AddView.swift
//  iExpense
//
//  Created by Hector Villasano on 10/8/20.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentaionMode
    @ObservedObject var expenses: Expenses
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    static let type = ["Business", "Personal"]
    
    @State private var alerIspresented = false
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(Self.type, id:\.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
      
                
            }
            .alert(isPresented: $alerIspresented){
                Alert(title: Text("Error With Amount"), message: Text("Please use a valid Dollar amount"), dismissButton: .default(Text("OK")))
            }
            .navigationTitle("Add New Expense")
            .navigationBarItems(trailing: Button("Save"){
                if let actualAmout = Int(amount) {
                    let item = ExpenseItem(name: name, type: type, amount: actualAmout)
                    self.expenses.items.append(item)
                    self.presentaionMode.wrappedValue.dismiss()
                } else {
                    alerIspresented.toggle()
                }
            })
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
