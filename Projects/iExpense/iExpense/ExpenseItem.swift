//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Hector Villasano on 10/7/20.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Int
}

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet { encodeItems() }
    }
    
    init() {
        decodeItems()
    }
    
    
    private func encodeItems() {
        if let encodedItems = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedItems,forKey: "Items")
        }
        
    }
    
    private func decodeItems() {
        if let itemsData = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: itemsData) {
                items = decodedItems
                return
            }
        }
        
        items = []
    }
    
}
