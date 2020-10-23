//
//  CheckOutView.swift
//  Cupcake Corner
//
//  Created by Hector Villasano on 10/22/20.
//

import SwiftUI

struct CheckOutView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Text("Checkout")
        
    }
}

struct CheckOutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutView(order: Order())
    }
}
