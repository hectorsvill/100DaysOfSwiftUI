//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Hector Villasano on 10/7/20.
//

import Foundation

struct ExpenseItem {
    let name: String
    let type: String
    let amount: Int
}

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
