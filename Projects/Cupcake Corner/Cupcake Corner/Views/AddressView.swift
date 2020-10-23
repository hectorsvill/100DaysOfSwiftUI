//
//  AddressView.swift
//  Cupcake Corner
//
//  Created by Hector Villasano on 10/22/20.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order: Order
    
    var body: some View {
      Text("Adrees view")
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
